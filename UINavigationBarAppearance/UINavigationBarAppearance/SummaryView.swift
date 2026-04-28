import SwiftUI

struct SummaryView: View {

    private let rows: [SummaryRow] = [
        .init(title: "Transparent scroll edge", subtitle: "Large title sits on black content", symbol: "rectangle.topthird.inset.filled", tint: .blue),
        .init(title: "Blurred standard bar", subtitle: "Appears automatically while scrolling", symbol: "sparkles.rectangle.stack", tint: .purple),
        .init(title: "Native large title", subtitle: "UIKit performs the collapse", symbol: "textformat.size.larger", tint: .orange),
        .init(title: "Scroll edge appearance", subtitle: "Configured with UINavigationBarAppearance", symbol: "arrow.up.to.line.compact", tint: .green),
        .init(title: "Ultra thin material", subtitle: "Configured with UIBlurEffect", symbol: "circle.hexagongrid.fill", tint: .cyan),
        .init(title: "System behavior", subtitle: "No custom geometry math required", symbol: "checkmark.seal.fill", tint: .mint),
        .init(title: "Move", subtitle: "458 / 600 kcal", symbol: "flame.fill", tint: .pink),
        .init(title: "Exercise", subtitle: "24 / 30 min", symbol: "figure.run", tint: .green),
        .init(title: "Stand", subtitle: "11 / 12 hrs", symbol: "figure.stand", tint: .cyan),
        .init(title: "Steps", subtitle: "8,742 today", symbol: "figure.walk", tint: .orange),
        .init(title: "Heart Rate", subtitle: "68 bpm resting", symbol: "heart.fill", tint: .red),
        .init(title: "Sleep", subtitle: "7h 18m", symbol: "bed.double.fill", tint: .indigo)
    ]

    @State private var showInlineTitle = false

    var body: some View {
        List {
            Section {
                // Custom Large Header perfectly matching Apple Fitness
                HStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Summary")
                            .font(.system(.largeTitle, weight: .bold))
                            .foregroundStyle(.white)
                        
                        Text(formattedDate)
                            .font(.system(.headline, design: .rounded, weight: .semibold))
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                    
                    ProfileButton(size: 40)
                }
                .listRowBackground(Color.clear)
                .listRowInsets(EdgeInsets(top: 10, leading: 16, bottom: 20, trailing: 16))
                .listRowSeparator(.hidden)
                .background {
                    // Track scroll offset to fade in the inline title
                    GeometryReader { geo in
                        Color.clear.onChange(of: geo.frame(in: .global).maxY) { oldVal, newVal in
                            let shouldShow = newVal < 100 // Threshold for when header scrolls out
                            if showInlineTitle != shouldShow {
                                withAnimation(.easeInOut(duration: 0.2)) {
                                    showInlineTitle = shouldShow
                                }
                            }
                        }
                    }
                }
            }

            Section {
                ForEach(rows) { row in
                    SummaryCard(row: row)
                        .listRowBackground(Color.clear)
                        .listRowInsets(EdgeInsets(top: 7, leading: 16, bottom: 7, trailing: 16))
                        .listRowSeparator(.hidden)
                }
            }
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .background(Color.black)
        .navigationTitle(showInlineTitle ? "Summary" : "")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            if showInlineTitle {
                ToolbarItem(placement: .topBarTrailing) {
                    ProfileButton(size: 28)
                }
            }
        }
    }

    private var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, d MMM"
        return formatter.string(from: Date())
    }
}

// MARK: - Profile Button

private struct ProfileButton: View {
    var size: CGFloat
    
    var body: some View {
        Button {} label: {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: size))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .gray.opacity(0.35))
        }
        .accessibilityLabel("Profile")
    }
}

// MARK: - Data Model

private struct SummaryRow: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let symbol: String
    let tint: Color
}

// MARK: - Card Component

private struct SummaryCard: View {
    let row: SummaryRow

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: row.symbol)
                .font(.system(size: 22, weight: .semibold))
                .foregroundStyle(row.tint)
                .frame(width: 42, height: 42)
                .background(row.tint.opacity(0.16), in: Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(row.title)
                    .font(.system(.headline, design: .rounded, weight: .semibold))
                    .foregroundStyle(.white)

                Text(row.subtitle)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundStyle(.secondary)
            }

            Spacer()
        }
        .padding(16)
        .background(Color(white: 0.11), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 18, style: .continuous)
                .stroke(.white.opacity(0.06), lineWidth: 1)
        }
    }
}

#Preview {
    NavigationStack {
        SummaryView()
    }
    .preferredColorScheme(.dark)
}

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

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 14) {
                Text(formattedDate)
                    .font(.system(.headline, design: .rounded, weight: .semibold))
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.top, 4)

                ForEach(rows) { row in
                    SummaryCard(row: row)
                }
            }
            .padding(.bottom, 32)
        }
        .background(Color.black)
        .scrollContentBackground(.hidden)
        .navigationTitle("Summary")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                } label: {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.title2)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .white)
                }
                .accessibilityLabel("Profile")
            }
        }
        .preferredColorScheme(.dark)
    }

    private var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, d MMM"
        return formatter.string(from: Date())
    }
}

private struct SummaryRow: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let symbol: String
    let tint: Color
}

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
        .padding(.horizontal, 16)
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SummaryView()
        }
        .preferredColorScheme(.dark)
    }
}

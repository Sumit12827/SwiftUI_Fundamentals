import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            SummaryView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

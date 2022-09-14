import SwiftUI
struct ContentView: View {
    @State var km = 0.00
    @State var mile = 0.00
    var body: some View {
        HStack {
            TextField("Quantity 1", value: $km, format: .number)
            Text(String(km*0.62137))
            
        }
    }
}

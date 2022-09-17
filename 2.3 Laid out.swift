import SwiftUI
struct ContentView: View {
    @State var km = 0.00
    @State var mile = 0.00
    var body: some View {
        VStack{
            Text("Miles & Kilometres conversion")
                .font(.title)
                .padding()
        HStack {
            
            Text("Kilometres")
                .padding()
            TextField("Quantity 1", value: $km, format: .number)
                .textFieldStyle(.roundedBorder)
                .border(.green, width: 4)
                .keyboardType(.decimalPad)
            Text("Miles")
            Text("\(km*0.62137, specifier: "%.2f")")
                
            
        }
            Divider()
            HStack {
                Text("Miles")
                    .padding()
                TextField("Quantity 1", value: $mile, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.yellow, width: 4)
                    .keyboardType(.decimalPad)
                Text("Kilometres")
                Text("\(mile*1.60934, specifier: "%.2f")")
                    .padding()
        }
            Spacer()
        }
        
    }
}

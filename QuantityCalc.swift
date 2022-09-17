import SwiftUI

struct ContentView: View {
    
    @State var cost_item1:Double = 1.00
    @State var cost_item2:Double = 1
    @State var quantity1:Double = 1.00
    @State var quantity2:Double = 1
    @State var coloritem1: Color = .green
    @State var coloritem2: Color = .green
    
    var total : Double { 
        // Need to use a get to get computed value, because must be initialised later and need to check for any value change.
        get {
            return cost_item1 + cost_item2 + quantity1 + quantity2
        }
    }
    
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            Text("Quantity Calculator")
                .font(.largeTitle)
            Text("This quantity calculator helps you at the supermarket where they carefully price items to let you believe you are getting a deal. The quantity might be in ml or grams")
            Text("item 1")
                .font(.title)
            HStack{
                Text("Price: ")
            TextField("Price Item 1", value: $cost_item1, format: .number)
                    .textFieldStyle(.roundedBorder)
                Text("Quantity: ")
            TextField("Quantity 1", value: $quantity1, format: .number)
                    .textFieldStyle(.roundedBorder)
            }
            Text(String(cost_item1/quantity1))
                .padding()
                .border(coloritem1, width: 4)
            .onChange(of: total){
                newValue in
                // print(total) Checking the calculated value
                if cost_item1/quantity1 > cost_item2/quantity2{
                    coloritem1 = .red
                }
                else {coloritem1 = .green}
            }
            
            Text("item 2")
                .font(.title)
            HStack{
                Text("Price: ")
                TextField("Price Item 2", value: $cost_item2, format: .number)
                    .textFieldStyle(.roundedBorder)
                Text("Quantity: ")
            TextField("Quantity 2", value: $quantity2, format: .number)
                    .textFieldStyle(.roundedBorder)
            }
            Text(String(cost_item2/quantity2))
                .padding()
                .border(coloritem2, width: 4)
                .onChange(of: total){
                    newValue in
                    print(total)
                    if  cost_item2/quantity2 > cost_item1/quantity1{
                        coloritem2 = .red
                    }
                    else {coloritem2 = .green}
                }
            Spacer() // Puts a Vstack to the top.
        }
        .padding()
    }
}

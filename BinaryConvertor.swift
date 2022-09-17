import SwiftUI
struct ContentView: View {
    @State var num = 0
    var body: some View {
        VStack(alignment: .leading){
            Text("Decimal to Binary")
                .font(.title)
        HStack {
            VStack(alignment: .leading){            
                TextField("Enter Num", value: $num, format: .number)
                    .border(Color(UIColor.separator))
                Text("Decimal")
            }
            
            VStack(alignment: .trailing)
            {Text(String(num, radix: 2))
                Text("Binary")
            }
            .padding()
            
            VStack(alignment: .trailing){
                Text(String(num, radix: 16))
                Text("Hexadecimal")
            }
            .padding()
            
        }
    }
        .padding()
    }
}

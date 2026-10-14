import SwiftUI
import Playgrounds

struct ContentView: View {
    // Build all of weather app in here
    var low_temp: Int = 57
    var high_temp: Int = 45
    var current_temp: Int = 55
    var body: some View {
        
        VStack(alignment: .center) {
            Text("Chapel Hill").font(.largeTitle)
            
            Text("\(current_temp)°")  .font(.custom("HelveticaNeue-Thin", size: 75))
            
            Text("Sunny").font(.callout)
            
            Text("H: \(high_temp)° L: \(low_temp)°")
        
        }
        .font(.custom("HelveticaNeue-Thin", size: 20))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(
                colors: [Color(red:55/255, green:116/255, blue:219/255), Color(red:103/255, green:177/255, blue:227/255), Color(red: 239/255, green:247/255, blue: 252/255)],
                startPoint: .top,
                endPoint: .bottom)
            )
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}

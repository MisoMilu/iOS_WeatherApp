import SwiftUI
import Playgrounds

struct ContentView: View {
    // Build all of weather app in here
    var low_temp: Int = 57
    var high_temp: Int = 45
    var current_temp: Int = 55
    var body: some View {
        ZStack{
            
            //First, always build ZStack bc of the background./Users/misomilu/Desktop/College/iOS_BootCamp/project 1/weather/HourlyRowView.swift
            // Background
            LinearGradient(
                colors: [Color(red:55/255, green:116/255, blue:219/255), Color(red:103/255, green:177/255, blue:227/255), Color(red: 239/255, green:247/255, blue: 252/255)],
                startPoint: .top,
                endPoint: .bottom).ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    VStack{
                        // The top City, tempurature, weather..
                        VStack(alignment: .center) {
                            Text("Chapel Hill").font(.largeTitle)
                            Text("\(current_temp)°")
                                .font(.system(size: 85, weight: .thin))
                                .offset(x:15)

    
                            Text("Sunny").font(.callout)
                                .offset(x:3)
                            
                            Text("H: \(high_temp)° L: \(low_temp)°")
                                .font(.system(size: 20, weight: .medium))
                        }
                        .frame(maxWidth: .infinity)
                        .font(.custom("HelveticaNeue-Thin", size: 20))
                        .padding(.top, 70)
                        .foregroundColor(.white)
                        
                        HourlyForecastView()
                            .padding(.top, 50) // add spacing
                        
                        WeeklyForcastView2()
                    }
                    
                    
                }
            }
        }
    
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}

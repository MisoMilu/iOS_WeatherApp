//
//  WeeklyForcastView2.swift
//  MyApp
//
//  Created by Samantha Chang on R 8/10/27.
//

import SwiftUI

struct WeeklyForcastView2: View {
    let  weekly_forecasts: [WeeklyRowView] = [
        .init(date: "Today", weather: Image(systemName: "sun.max.fill"), low_temp: 20, high_temp: 30),
        .init(date: "Mon", weather: Image(systemName: "cloud.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Tues", weather: Image(systemName: "cloud.drizzle.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Wed", weather: Image(systemName: "snowflake"), low_temp: 15, high_temp: 40),
        .init(date: "Thu", weather: Image(systemName: "cloud.drizzle.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Fri", weather: Image(systemName: "snowflake"), low_temp: 15, high_temp: 40)
        ]
    
    var body: some View {
        //the HStack automatically knows that after each iteration of foreach, it produces a distinct element for Vstack
        VStack(alignment: .leading){
            ForEach(weekly_forecasts){
                days in
                HStack{
                    // ProbIf "Today" and "Fri" both get a 60-point-wide box, the next item—the weather icon—starts at the same position
                    Text(days.date)
                    days.weather
                    Text("\(days.low_temp)°")
                    days.temperature_bar
                    Text("\(days.high_temp)°")
                }
            
            }
            
        }
        
    }
}


#Preview {
    WeeklyForcastView2()
}

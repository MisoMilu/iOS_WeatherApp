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
        .init(date: "Wed", weather: Image(systemName: "snowflake"), low_temp: -2, high_temp: 9),
        .init(date: "Thu", weather: Image(systemName: "cloud.drizzle.fill"), low_temp: 10, high_temp: 40),
        .init(date: "Fri", weather: Image(systemName: "sun.max.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Sat", weather: Image(systemName: "cloud.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Sun", weather: Image(systemName: "cloud.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Mon", weather: Image(systemName: "cloud.sun.fill"), low_temp: 15, high_temp: 40),
        .init(date: "Tues", weather: Image(systemName: "snowflake"), low_temp: 15, high_temp: 40)
        ]
    
    var body: some View {
        //the HStack automatically knows that after each iteration of foreach, it produces a distinct element for Vstack
        VStack(alignment: .leading, spacing: 15){
            Label("10-DAY FORECAST", systemImage: "calendar")
                .font(.subheadline)
                .opacity(0.9)
                .symbolRenderingMode(.monochrome)
            ForEach(weekly_forecasts){
                days in
                HStack (spacing: 16){
                    // Problem: omg everything is not aligned
                    // Solve: Use .frame, but whats that
                    //If "Today" and "Fri" both get a 60-point-wide box, the next item—the weather icon—starts at the same position
                    Text(days.date)
                        .frame(width: 50, alignment: .leading)
                        .padding(.trailing, 20)
                    days.weather
                        .frame(width: 60)
                    Text("\(days.low_temp)°")
                        .opacity(0.8)
                    days.temperature_bar
                        .frame(width: 56)
                    Text("\(days.high_temp)°")
                }
            
            }
            
        }
        .font(.title3)
        .padding(.leading, 20) // leftside
        .padding(.trailing, 40)
        .padding(.vertical, 15)
        .foregroundStyle(.white)
        .fontWeight(.bold)
        .symbolRenderingMode(.multicolor)
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(.blue).opacity(0.5))
        
    }
}


#Preview {
    WeeklyForcastView2()
}

//
//  HourlyForecastView.swift
//  MyApp
//
//  Created by Samantha Chang on R 8/10/14.
//

import SwiftUI

struct HourlyForecastView: View {
    var body: some View {
        
        // combines symbols and text
        VStack(alignment: .leading){
            Label("HOURLY FORECAST", systemImage: "clock")
                .font(.subheadline)
                .fontWeight(.bold)
                .opacity(0.9)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 2){
                    HourlyRowView(time: "Now",weather: Image(systemName: "sun.max.fill"), current_temp: 54)
                    HourlyRowView(time: "1PM",weather: Image(systemName: "sun.max.fill"), current_temp: 55)
                    HourlyRowView(time: "2PM",weather: Image(systemName: "sun.max.fill"), current_temp: 57)
                    HourlyRowView(time: "3PM",weather: Image(systemName: "sun.max.fill"), current_temp: 54)
                    HourlyRowView(time: "4PM",weather: Image(systemName: "sun.max.fill"), current_temp: 51)
                    HourlyRowView(time: "5PM",weather: Image(systemName: "sun.max.fill"), current_temp: 54)
                }
            }
        }
        .foregroundStyle(.white)
        .padding()
        // materials are natrual apple transparent backgrounds
       .background(RoundedRectangle(cornerRadius: 20)
        .fill(.blue).opacity(0.5))
        .padding(.horizontal,10)
       
    }
}

#Preview {
    HourlyForecastView()
}

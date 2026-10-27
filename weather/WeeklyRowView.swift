//
//  WeeklyRowView.swift
//  MyApp
//
//  Created by Samantha Chang on R 8/10/14.
//

import SwiftUI

struct WeeklyRowView: View, Identifiable{ // identifiable means each instance has a unique identity
    var id = UUID()
    var date: String
    var weather: Image
    var low_temp: Int
    var high_temp: Int
    var temperature_bar: some View = ZStack{
        RoundedRectangle(cornerRadius: 40)
            .fill(.blue)
            .frame(width: 80, height: 6)
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(red: 90/255,green: 188/255, blue:246/255))
            .frame(width: CGFloat.random(in: 50...70), height: 6)
    }
    
    
    var body: some View {
        HStack(spacing: 10){
            Text(date)
            weather
            Text("\(low_temp)°")
            temperature_bar
            Text("\(high_temp)°")
        
        }.font(.title3)
    }
    
}

#Preview {
    WeeklyRowView(date: "Today", weather: Image(systemName: "cloud.fill"), low_temp: 20, high_temp: 30)
}

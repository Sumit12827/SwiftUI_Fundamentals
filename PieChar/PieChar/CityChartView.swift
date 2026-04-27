//
//  CityChartView.swift
//  PieChar
//
//  Created by Sumit on 15/04/26.
//

import SwiftUI
import Charts
struct DaySales: Identifiable{
    var day : Date;
    var sales: Int
    var id: Date {day}
}

let cupertinoData: [DaySales] = [
    .init(day: .init(timeInterval: 0 , since:Date()) , sales : 100) , .init(day: makeDate(1) , sales: 50) , .init(day: makeDate(2) , sales: 30) , .init(day: makeDate(3) , sales: 60) , .init(day: makeDate(4) , sales: 40) , .init(day: makeDate(5) , sales: 90) , .init(day: makeDate(7) , sales: 70)
    ]


let sfData: [DaySales] = [.init(day: makeDate(0), sales: 200),
                          .init(day: makeDate(1), sales: 150),
                          .init(day: makeDate(2), sales: 160),
                          .init(day: makeDate(3), sales: 140),
                          .init(day: makeDate(4), sales: 130),
                          .init(day: makeDate(5), sales: 170),
]

func makeDate(_ weekday: Int) ->
Date{
    var component =
    DateComponents()
    component.yearForWeekOfYear = 2021
    component.weekOfYear = 30
    component.weekday = weekday + 1
    return
        Calendar.current
        .date(from:component) ?? Date()
    
}




struct CityChartView: View {
    
    @State private var city = "cupertino"
    var currentData: [DaySales]{
        city == "cupertino" ? cupertinoData : sfData
    }
    var body: some View {
        
        
        VStack(spacing: 20){
            Picker("city" , selection: $city){
                Text("cupertino") .tag("cupertino")
                Text("san francisco") .tag("san francisco")
            }
            .pickerStyle(.segmented)
        }
        Chart(currentData) {item in
            BarMark(x: .value("day" ,
                              item.day , unit: .day) , y: .value("sales" , item.sales))
        }
        .animation(.easeInOut , value: city)
        .padding()
    }
}

#Preview {
    CityChartView()
}

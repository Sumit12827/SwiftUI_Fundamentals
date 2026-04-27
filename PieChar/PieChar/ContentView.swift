//
//  ContentView.swift
//  PieChar
//
//  Created by Sumit on 15/04/26.
//

import SwiftUI
import Charts

struct Pancake : Identifiable{
    var id = UUID()
    var name: String
    var sales: Int
}


let data: [Pancake] = [ .init(name:"cachapa" , sales: 916) , .init(name:"Injera" , sales: 850) , .init(name: "crepe" , sales: 780) , .init(name: "JianBing" , sales: 700) , .init(name: "Dosa" , sales: 980) , .init(name: "American" , sales: 900)
]



struct ContentView: View {
    var body: some View {
            Chart(data){
                element in
                BarMark(x:
                        .value("Sales" , element.sales) , y:.value("Name" , element.name))
                
            }
            
            
            
            
               
            
        .padding()
        }
       
    }


#Preview {
    ContentView()
}

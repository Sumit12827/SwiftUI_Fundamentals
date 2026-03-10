//
//  GaugeView.swift
//  MoreSwiftUiComponent
//
//  Created by GU on 06/02/26.
//

import SwiftUI

struct GaugeView: View {
    
    @State private var currentSteps: Double = 400.0
    let minimumSteps: Double = 0
    @State private var maximumSteps: Double = 1000
    
    @State private var vitaminLevel: Double = 35
    let minimumVitaminLevel: Double = 20
    @State private var maximumVitaminLevel: Double = 150
    
    let gradient: Gradient = Gradient(colors: [.red, .orange, .yellow, .green])
    
    var body: some View {
        Text("Default Gauge View")
        GroupBox{
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
        }
        
        Text("Linear Gauge View")
        GroupBox("Linear Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.linearCapacity)
        }
        
        Text("Accessory Linear")
        GroupBox("Accessory Linear"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryLinear)
        }
        
        Text("Accessory Linear capacity")
        GroupBox("Accessory Linear Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryLinearCapacity)
        }
        
        Text("Accessory Circular")
        GroupBox("Accessory Circular"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryCircular)
        }

        Text("Accessory Circular Capacity")
        GroupBox("Accessory Circular Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryCircularCapacity)
        }
        
        Text("Default Tint Gauge View")
        GroupBox{
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .tint(.green)
        }
        
        Text("Linear Gauge View")
        GroupBox("Linear Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .tint(.green)
            .gaugeStyle(.linearCapacity)
        }
        
        Text("Accessory Linear")
        GroupBox("Accessory Linear"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryLinear)
            .tint(.green)
        }
        
        Text("Accessory Linear capacity")
        GroupBox("Accessory Linear Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryLinearCapacity)
            .tint(.green)
        }
        
        Text("Accessory Circular")
        GroupBox("Accessory Circular"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.green)
        }

        Text("Accessory Circular Capacity")
        GroupBox("Accessory Circular Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(.green)
        }
        
        Text("Default Gradient Gauge View")
        GroupBox{
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .tint(gradient)
        }
        
        Text("Linear Gauge View")
        GroupBox("Linear Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.linearCapacity)
            .tint(gradient)
        }
        
        Text("Accessory Linear")
        GroupBox("Accessory Linear"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryLinear)
            .tint(gradient)
        }
        
        Text("Accessory Linear capacity")
        GroupBox("Accessory Linear Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryLinearCapacity)
            .tint(gradient)
        }
        
        Text("Accessory Circular")
        GroupBox("Accessory Circular"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryCircular)
            .tint(gradient)
        }

        Text("Accessory Circular Capacity")
        GroupBox("Accessory Circular Capacity"){
            Gauge(value: currentSteps, in: minimumSteps...maximumSteps) {
                Text("Steps Today")
            } currentValueLabel: {
                Text("\(Int(currentSteps))")
            } minimumValueLabel: {
                Text("\(Int(minimumSteps))")
            } maximumValueLabel: {
                Text("\(Int(maximumSteps))")
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(gradient)
        }
        
        Text("Gauge Task Vitamin d Level")
        GroupBox("Accessory Circular"){
            Gauge(value: vitaminLevel, in: minimumVitaminLevel...maximumVitaminLevel) {
                Text("Steps Today")
            } currentValueLabel: {
                VStack{
                    Text("\(Int(vitaminLevel))")
                        .font(.system(size: 16))
                    Text("ng/ml")
                        .font(.system(size: 8))
                }
            } minimumValueLabel: {
                Text("\(Int(minimumVitaminLevel))")
                    .font(.system(size: 8))
            } maximumValueLabel: {
                Text("\(Int(maximumVitaminLevel))")
                    .font(.system(size: 8))
            }
            .gaugeStyle(.accessoryCircular)
            .tint(gradient)
        }
    }
}

#Preview {
    GaugeView()
}

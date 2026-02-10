//
//  complexInputScreenApp.swift
//  complexInputScreen
//
//  Created by Sumit Downey on 03/02/26.
//

import SwiftUI

@main
struct complexInputScreenApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//import SwiftUI
//
//struct ContentView: View {
//    @State private var eventName = ""
//    @State private var eventDescription = ""
//    @State private var eventType = "Workshop"
//    @State private var startDate = Date()
//    @State private var endDate = Date()
//    @State private var coordinator = ""
//    @State private var coordinators: [String] = []
//    @State private var isPublic = false
//
//    let types = ["Workshop", "Meet-Up"]
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Section(header: Text("Event Details")) {
//                    TextField("Event Name", text: $eventName)
//                    TextField("Event Description", text: $eventDescription)
//                }
//
//                Section {
//                    Picker("Event Type", selection: $eventType) {
//                        ForEach(types, id: \.self) {
//                            Text($0)
//                        }
//                    }
//                }
//
//                Section {
//                    DatePicker("Start Date", selection: $startDate)
//                    DatePicker("End Date", selection: $endDate)
//                }
//
//                Section(header: Text("Coordinators")) {
//                    HStack {
//                        TextField("Add coordinator", text: $coordinator)
//                        Button("Add") {
//                            if !coordinator.isEmpty {
//                                coordinators.append(coordinator)
//                                coordinator = ""
//                            }
//                        }
//                    }
//
//                    ForEach(coordinators, id: \.self) {
//                        Text($0)
//                    }
//                }
//
//                Section {
//                    Toggle("Is event public?", isOn: $isPublic)
//                }
//            }
//            .navigationTitle("New Event Form")
//        }
//    }
//}

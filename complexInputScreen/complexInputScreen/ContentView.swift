//
//  ContentView.swift
//  complexInputScreen
//
//  Created by Sumit Downey on 03/02/26.
//

import SwiftUI

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
////                Section {
////                    DatePicker("Start Date", selection: $startDate)
////                    DatePicker("End Date", selection: $endDate)
////                }
//                
//                Section{
//                   DatePicker("Start Date" , selection: $startDate)
//                    DatePicker("end date" , selection: $endDate)
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


import SwiftUI

struct ContentView: View {
    @State private var title = ""
    @State private var description = ""
    @State private var type = "Workshop"
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var venue = ""
    @State private var isPublic = false

    // ✅ Coordinator array
    @State private var coordinators: [String] = []

    let types = ["Workshop", "Meet-Up"]

    var body: some View {
        NavigationStack {
            Form {

                // Event Info
                Section {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description, axis: .vertical)
                }

                // Event Details
                Section {
                    Picker("Type", selection: $type) {
                        ForEach(types, id: \.self) {
                            Text($0)
                        }
                    }

                    DatePicker("Start Date", selection: $startDate)
                    DatePicker("End Date", selection: $endDate)

                    TextField("Venue", text: $venue)
                }

                // ✅ Coordinators Section
                Section("Coordinators") {

                    Button {
                        coordinators.append("")   // add using index
                    } label: {
                        Label("Add Coordinator", systemImage: "plus.circle.fill")
                            .foregroundColor(.green)
                    }

                    ForEach(coordinators.indices, id: \.self) { index in
                        HStack {
                            TextField("Coordinator \(index + 1)",
                                      text: $coordinators[index])

                            Spacer()

                            Button {
                                coordinators.remove(at: index) // remove using index
                            } label: {
                                Image(systemName: "minus.circle.fill")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }

                // Public Toggle
                Section {
                    Toggle("Is event public?", isOn: $isPublic)
                }
            }
            .navigationTitle("New Event Form")
        }
    }
}

#Preview {
    ContentView()
}

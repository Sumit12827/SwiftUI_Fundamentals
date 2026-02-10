////
////  ContentView.swift
////  Tabview
////
////  Created by Sumit Downey on 02/02/26.
////
//


//
//import SwiftUI
//
//struct ContentView: View {
//
//    enum ClockTab {
//        case worldClock
//        case alarm
//        case stopWatch
//    }
//
//    @State private var selectedTab: ClockTab = .alarm
//
//    var body: some View {
//        TabView(selection: $selectedTab) {
//
//            
//            NavigationStack {
//                WorldClockView()
//            }
//            .tabItem {
//                Label("World Clock", systemImage: "globe.fill")
//            }
//            .tag(ClockTab.worldClock)
//
//            
//            NavigationStack {
//                AlarmView()
//            }
//            .tabItem {
//                Label("Alarm", systemImage: "alarm.fill")
//            }
//            .tag(ClockTab.alarm)
//
//            
//            NavigationStack {
//                StopwatchView()
//            }
//            .tabItem {
//                Label("Stopwatch", systemImage: "stopwatch.fill")
//            }
//            .tag(ClockTab.stopWatch)
//        }
//    }
//}
//
//
//struct WorldClockView: View {
//    var body: some View {
//        List {
//            NavigationLink("Featured City") {
//                Text("City Details")
//            }
//        }
//        .navigationTitle("World Clock")
//    }
//}
//
//
//struct AlarmView: View {
//
//    @State private var showAddAlarmSheet = false
//
//    var body: some View {
//        List {
//            Text("07:00 AM")
//            Text("08:30 AM")
//        }
//        .navigationTitle("Alarm")
//        .toolbar {
//            ToolbarItem(placement: .topBarTrailing) {
//                Button {
//                    showAddAlarmSheet = true
//                } label: {
//                    Image(systemName: "plus")
//                }
//            }
//        }
//        .sheet(isPresented: $showAddAlarmSheet) {
//            AddAlarmView()
//        }
//    }
//}
//
//
//struct AddAlarmView: View {
//
//    @Environment(\.dismiss) private var dismiss
//    @State private var alarmTime = Date()
//
//    var body: some View {
//        NavigationStack {
//            Form {
//                DatePicker("Time", selection: $alarmTime, displayedComponents: .hourAndMinute)
//            }
//            .navigationTitle("Add Alarm")
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Button("Cancel") {
//                        dismiss()
//                    }
//                }
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button("Save") {
//                        
//                        dismiss()
//                    }
//                }
//            }
//        }
//    }
//}
//
//
//struct StopwatchView: View {
//    var body: some View {
//        Text("Stopwatch Screen")
//            .font(.largeTitle)
//            .navigationTitle("Stopwatch")
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI

struct ContentView: View {

    enum ClockTab {
        case worldClock
        case alarm
        case stopWatch
    }

    @State private var selectedTab: ClockTab = .alarm

    // MARK: - Badge States
    @State private var worldClockCount = 1
    @State private var alarmCount = 2
    @State private var isStopwatchRunning = false

    var body: some View {
        TabView(selection: $selectedTab) {

            // 🌍 World Clock
            NavigationStack {
                WorldClockView()
            }
            .tabItem {
                Label("World Clock", systemImage: "globe.fill")
            }
            .badge(worldClockCount)
            .tag(ClockTab.worldClock)

            // ⏰ Alarm
            NavigationStack {
                AlarmView(alarmCount: $alarmCount)
            }
            .tabItem {
                Label("Alarm", systemImage: "alarm.fill")
            }
            .badge(alarmCount)
            .tag(ClockTab.alarm)

            // ⏱️ Stopwatch
            NavigationStack {
                StopwatchView(isRunning: $isStopwatchRunning)
            }
            .tabItem {
                Label("Stopwatch", systemImage: "stopwatch.fill")
            }
            .badge(isStopwatchRunning ? "LIVE" : nil)
            .tag(ClockTab.stopWatch)
        }
    }
}

// MARK: - World Clock View
struct WorldClockView: View {
    var body: some View {
        List {
            NavigationLink("Featured City") {
                Text("City Details")
            }
        }
        .navigationTitle("World Clock")
    }
}

// MARK: - Alarm View
struct AlarmView: View {

    @Binding var alarmCount: Int
    @State private var showAddAlarmSheet = false

    var body: some View {
        List {
            Text("07:00 AM")
            Text("08:30 AM")
        }
        .navigationTitle("Alarm")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    showAddAlarmSheet = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $showAddAlarmSheet) {
            AddAlarmView {
                alarmCount += 1
            }
        }
    }
}

// MARK: - Add Alarm Sheet
struct AddAlarmView: View {

    @Environment(\.dismiss) private var dismiss
    var onSave: () -> Void

    @State private var alarmTime = Date()

    var body: some View {
        NavigationStack {
            Form {
                DatePicker("Time", selection: $alarmTime, displayedComponents: .hourAndMinute)
            }
            .navigationTitle("Add Alarm")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        onSave()
                        dismiss()
                    }
                }
            }
        }
    }
}

// MARK: - Stopwatch View
struct StopwatchView: View {

    @Binding var isRunning: Bool

    var body: some View {
        VStack(spacing: 20) {
            Text("Stopwatch Screen")
                .font(.largeTitle)

            Button(isRunning ? "Stop" : "Start") {
                isRunning.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Stopwatch")
    }
}

#Preview {
    ContentView()
}



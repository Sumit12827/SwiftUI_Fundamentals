//
//  ContentView.swift
//  MoreSwiftUiComponent
//
//  Created by GU on 06/02/26.
//

import SwiftUI

enum SelectView: String, CaseIterable {
    case gauge = "Gauge"
    case photos = "Photos"
    case others = "Others"
}

struct ContentView: View {
    
    @State private var selectView: SelectView = .gauge
    
    var body: some View {
        NavigationStack{
                VStack(alignment: .leading, spacing: 10){
                    ScrollView{
                    Picker("Selected View",selection: $selectView) {
                        ForEach(SelectView.allCases, id: \.self) {view in
                            Text(view.rawValue).tag(view)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    
                    switch selectView {
                    case .gauge:
                        GaugeView()
                    case .photos:
                        PhotosView()
                    case .others:
                        OthersView()
                    }
                    
                }
            }
            .padding()
            .navigationTitle("Examples")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    ContentView()
}

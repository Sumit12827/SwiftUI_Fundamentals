//
//  ContentView.swift
//  Landmarks
//
//  Created by Probeer on 12/01/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var landmarks: [Landmark] = DataModel.landmarks
    var selectedLandmark = DataModel.landmarks[0]
    
    @State private var isAboutTextExpanded: Bool = false
    
    var body: some View {
        ZStack(alignment: .topLeading){
        Image(selectedLandmark.imageName)
            .resizable()
            .scaledToFill()
            .frame(height:300)
            .ignoresSafeArea()
            
            
            ScrollView{
                Spacer()
                    .frame(height: 300)
                
                
                    Text(selectedLandmark.name)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .shadow(color: .black , radius: 20 )
                        .padding(.horizontal , 10)
                        .frame(maxWidth: .infinity , alignment: .leading)
                    Spacer()
               
                
                VStack(alignment: .leading) {
                  Spacer()
                    
                    HStack{
                        
                        Text("About")
                            .font(.title)
                            .bold()
                        
                        Spacer()
                        Button {
                            
                        }label: {
                            Image(systemName: selectedLandmark.isFavorited ? "heart.fill" : "heart")
                                .font(.title)
                                .padding()
                                .background(.white , in: .circle)
                                .shadow(color: .black , radius: 10)
                                
                        }
                        .offset(y: -30)
                    }
                        //.padding(.horizontal,20)
                    Spacer()
                    
                    Text(selectedLandmark.about)
                        .lineLimit(isAboutTextExpanded ? nil : 5)
                    
                    Button{
                        isAboutTextExpanded.toggle()
                    } label: {
                        Text(isAboutTextExpanded ? "read less" : "read more")
                    }
                    
                    Text("amenities")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(selectedLandmark.amenities) {
                                amenity in
                                Label(amenity.name.rawValue,
                                      systemImage: amenity.imageName)
                                .padding(10)
                                .background(.yellow , in: .capsule)
                            }
                        }
                    }
                    Text("Discover other landmark")
                        .font(.title)
                        .bold()
                    Spacer()
                    
                    ScrollView(.horizontal){
                        HStack {
                            ForEach(landmarks) { landmark in
                                VStack{
                                    Image(landmark.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width:160 , height: 100)
                                        .cornerRadius(20)
                                    Text(landmark.name)
                                    
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal , 20)
                .background(.white , in: .rect(cornerRadius: 20))
                
            }
        
        
        
       }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Indian Vaccination Schedules
//
//  Created by John Lazarus on 02/05/23.
//

import SwiftUI


struct ContentView: View {
    @State private var showFullScreen = false
    @State private var showFullScreen2 = false
    
    var body: some View {
        VStack {
            GIFImage("girl-skipping")
            .ignoresSafeArea(edges: .top)
            HealthyChild().offset(y: -80)
                .padding(.bottom, -80)
            VStack {
                Text("Indian Vaccination Schedules")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .padding(.top, -5)
                    .padding(.bottom, -5)
                Divider()
                    .frame(width: 200.0, height: 0.0)
                    .frame(maxHeight:5)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.9098039215686274, green: 0.403921568627451, blue: 0.44313725490196076)/*@END_MENU_TOKEN@*/)
                Text("Your One-Stop shop for referencing the latest Immunization Schedules in India, the **NIS** and **IAP** both.")
                    .font(.headline)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
            }
            

            
            
            VStack {
                Divider()
                    .frame(width: 170.0)
                Divider()
                    .frame(width: 150.0)
                
                
                VStack {
                        Button("NIS: 2018") {
                            showFullScreen = true
                        }
                        .tint(Color(red: 0.914, green: 0.401, blue: 0.449))
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .sheet(isPresented: $showFullScreen) {
                                // Things to do when the screen is dismissed
                            } content: {
                                PDFUIView()
                            }
                        Text ("_Issued by the **Indian Government**_")
                            .font(.title3)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                

                Divider()
                    .frame(width: 283.885)
                    .padding(/*@START_MENU_TOKEN@*/.bottom, 15.0/*@END_MENU_TOKEN@*/)
              
                   
                        Button("IAP: 2020 - 21") {
                            showFullScreen2 = true
                        }
                        .tint(Color(red: 0.914, green: 0.401, blue: 0.449))
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .sheet(isPresented: $showFullScreen2) {
                                // Things to do when the screen is dismissed
                            } content: {
                                IAP()
                            }
                        Text ("_Issued by the **Indian Association of Pediatrics**_")
                            .font(.title3)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                }
                
                Spacer()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

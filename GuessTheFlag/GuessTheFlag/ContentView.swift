//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ankit Kumar on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert=false;
    var body: some View {
        VStack(alignment:.leading) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        HStack{
            Text("Ankit")
            Text("Kumar")
            
        }
        ZStack{
            Text("hello Khushii")
            Text("I'm Ankit")
        }.padding(20)
        VStack {
            HStack{
                Spacer()
                Text("1")
                Spacer()
                Text("2")
                Spacer()
                Text("3")
                Spacer()
                
            }
            
            HStack{
                Spacer()
                Text("1")
                Spacer()
                Text("2")
                Spacer()
                Text("3")
                Spacer()
                
            }
            HStack{
                Spacer()
                Text("1")
                Spacer()
                Text("2")
                Spacer()
                Text("3")
                Spacer()
                
            }
            
        }
        ZStack{
            //this color is adaptive to system settings
//            Color.primary
//            Color.accentColor
                /*.frame(width: 200,height: 200)*/ //add a frame of certan height/width
            //rgb
//            Color(red:1,green: 0.4,blue: 2)
//                .frame(minWidth: 200,maxWidth: .infinity,maxHeight: 200)
//            Color.red
//            Text("Ankit")
            VStack(spacing: 0){
            
                Color.red
                Color.blue
            }
            Text("your content")
//                .foregroundColor(.secondary)
                .foregroundStyle(.secondary)
                .padding(30)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
        }.ignoresSafeArea()
        LinearGradient(gradient: Gradient(colors: [.white.opacity(0.5), .black.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
        LinearGradient(gradient: Gradient(stops: [.init(color: .red, location: 0.45),
                                                  .init(color: .white, location: 0.47)
                                                 ]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
        RadialGradient(gradient: Gradient(colors: [.black,.white]), center: .center, startRadius: 20, endRadius: 200)
        
        Button("Alert"){
            showingAlert=true
        }
        .alert("Important message",isPresented: $showingAlert){
            Button("Delete",role: .destructive){
                
            }
            Button("Cancel",role: .cancel){
                
            }
        }message: {
            Text("please read this")
        }
        
        }
    }

#Preview {
    ContentView()
}

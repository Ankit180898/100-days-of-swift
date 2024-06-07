//
//  ContentView.swift
//  Tic tac toe
//
//  Created by Ankit Kumar on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var moves : [Move?] = Array(repeating: nil, count: 9)
    @State private var isHuman=false;
    let columns: [GridItem]=[GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        GeometryReader{
            geometryReader in
                VStack(){
                
                    Spacer()
                    LazyVGrid(columns: columns, content: {
                        ForEach(0..<9){
                            number in
                            ZStack(){
                                Circle()
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.5))
                                
                                Image(systemName: moves[number]?.indicator ?? "")
                                    .resizable()
                                    .frame(width: 40,height: 40)
                                    .foregroundColor(.white)
                                   
                                
                                
                            }
                            .onTapGesture {
                                moves[number]=Move(player: isHuman ? .human : .computer, boardIndex: number)
                                //computer's turn
                                isHuman.toggle()
                                
                            }
                        }
                    })
                    Spacer()
                }
                .padding()
            
         
           

            
        }
        .background(.indigo.opacity(0.2))
        
        
    }
}

enum Player{
    case human, computer
}

struct Move{
    let player:Player
    let boardIndex:Int
    var indicator:String{
        return player == .human ? "xmark" : "circle"
    }
    
}

#Preview {
    ContentView()
}

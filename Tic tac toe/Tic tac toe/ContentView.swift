//
//  ContentView.swift
//  Tic tac toe
//
//  Created by Ankit Kumar on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var moves : [Move?] = Array(repeating: nil, count: 9)

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
                                if isSquareOccupied(in: moves, for: number){
                                    return
                                }
                                moves[number]=Move(player: .human, boardIndex: number)
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 ){
                                    let computerPosition=determineComputerPosition(in: moves)
                                    moves[computerPosition]=Move(player: .computer, boardIndex: computerPosition)
                                }
            
                                
                            }
                        }
                    })
                    Spacer()
                }
                .padding()
            
         
           

            
        }
        .background(.indigo.opacity(0.2))
        
       
    }
    func isSquareOccupied(in moves:[Move?],for index:Int)->Bool{
        return moves.contains(where: {$0?.boardIndex==index})
    }
    
    func determineComputerPosition(in moves: [Move?])->Int{
        var movePosition=Int.random(in: 0..<9)
        while isSquareOccupied(in: moves, for: movePosition){
            movePosition=Int.random(in: 0..<9)
        }
        return movePosition
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

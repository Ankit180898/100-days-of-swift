//
//  HomeView.swift
//  GuessTheFlag
//
//  Created by Ankit Kumar on 25/05/24.
//

import SwiftUI

struct HomeView:View {
    @State private var scoreTitle=""
    @State private var showingScore=false
    @State private var score=0
    @State private var countries=["Estonia","France","Germany","Ireland"].shuffled()
    @State private var correctAnswer=Int.random(in: 0...2)
    var body: some View {
        ZStack{
            
//            LinearGradient(colors: [.blue,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            RadialGradient(stops:[
                .init(color: .blue, location: 0.3),
                .init(color:.black,location: 0.3)
            ]
                           ,center: .top,startRadius: 200,endRadius: 700
            )
            .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack(spacing:15){
                    
                    
                    VStack{
                        
                        Text("Tap the countries of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .foregroundColor(.black)
                            .font(.largeTitle.weight(.semibold))
                        
                    }
                    ForEach(0..<3){ number in
                        Button{
                            showTapped(number)
                        }label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule().stroke(Color.white, lineWidth: 3) // Adjust color and lineWidth as needed
                                )
                                .shadow(radius: 5)
                            
                            
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical,20)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20.0 ))
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.largeTitle.weight(.semibold))
                Spacer()
            }
            .padding()
            
            
            
        }
        .alert(scoreTitle,isPresented: $showingScore){
            Button("Continue",action: askQues)
        }message: {
            Text("Your score is \(score)")
        }
    }
        func showTapped(_ number:Int){
            if number==correctAnswer{
                scoreTitle="Correct"
                score += 1
            }
            else{
                scoreTitle="Incorrect"
            }
        showingScore=true
       
    }
    func askQues(){
        countries.shuffle()
        correctAnswer=Int.random(in:0...2)
    }
}

#Preview {
    HomeView()
}

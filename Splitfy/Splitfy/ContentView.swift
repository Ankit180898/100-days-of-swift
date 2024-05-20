//
//  ContentView.swift
//  Splitfy
//
//  Created by Ankit Kumar on 16/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage=20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
     var totalPerPerson:Double{
        let totalPerson=Double(numberOfPeople + 2)
        let tipSelection=Double(tipPercentage)
        let totalAmount = (checkAmount + (checkAmount/100 * tipSelection))/totalPerson
        return totalAmount
    }

    var body: some View {
        NavigationStack {
            Form{
                Section{
                    TextField("Amount",value: $checkAmount,format: .currency(code: Locale.current.currency?.identifier ?? "INR")).keyboardType(.decimalPad)
                   
                    
                    
                }
                Section{
                    Picker(
                        "Number of people",selection: $numberOfPeople){
                            ForEach(2..<100){
                                Text("\($0) people")
                            }
                            
                        }.pickerStyle(.automatic)
                }
                Section("How much do you want to tip?"){
                    Picker(
                        "Tip percentage",selection: $tipPercentage){
                            ForEach(tipPercentages,id: \.self){
                                Text($0,format: .percent)
                            }
                            
                        }
                        .pickerStyle(.segmented)
                }
                
                Section{
                    Text(totalPerPerson,format: .currency(code: "INR"))
                }
                
                
            }.navigationTitle("Splitfy")
        }
    }
}

#Preview {
    ContentView()
}

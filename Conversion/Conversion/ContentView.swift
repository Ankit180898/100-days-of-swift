//
//  ContentView.swift
//  Conversion
//
//  Created by Ankit Kumar on 19/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var inputNumber = 0
    @State private var inputUnit:UnitLength = .kilometers
    @State private var outputUnit:UnitLength = .meters
    let unitsList:[UnitLength] = [UnitLength.meters,UnitLength.feet,UnitLength.astronomicalUnits,UnitLength.centimeters,UnitLength.decameters,UnitLength.decimeters,UnitLength.feet,UnitLength.inches,UnitLength.kilometers]
    var outputNum:Measurement<UnitLength>{
        let inputMeasurement = Measurement(value: Double(inputNumber), unit: inputUnit)

        return inputMeasurement.converted(to: outputUnit)
    }
    var body: some View {
        NavigationStack{
            Form{
                Section("Input unit"){
                    Picker(
                        "Input length unit",selection: $inputUnit){
                            ForEach(unitsList,id: \.self){Unit in
                                Text("\(Unit.symbol)")
                            }
                            
                            
                        }.pickerStyle(.segmented)
                }
                Section("Output unit"){
                    Picker(
                        "Output length unit",selection: $outputUnit){
                            ForEach(unitsList,id: \.self){Unit in
                                Text("\(Unit.symbol)")
                                
                            }
                            
                            
                        }.pickerStyle(.segmented)
                }
                
                Section(""){
                    TextField("Enter number", value: $inputNumber,format:.number  ).keyboardType(.numberPad)
                    
                }
                Section{
                    Text("\(outputNum.value)")
                    
                }
            }.navigationTitle("Conversion")
        }
    }
}

#Preview {
    ContentView()
}

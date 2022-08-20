//
//  ContentView.swift
//  BitShifter
//
//  Created by Patrick Fezer on 07.02.22.
//

import SwiftUI

struct ContentView: View {
    @State private var inputString = ""
    @State private var shiftString = ""
    @State private var selection = 0
    
    let dir = ["Left", "Right"]
    
    var shiftedNumber: Int {
        // Convert input to int
        let number = StringToInt(inputString)
        let shift = StringToInt(shiftString)
        
        var ret = 0
        
        if selection == 0 {
            ret = number << shift
        } else {
            ret = number >> shift
        }
        
        return ret
    }
    var body: some View {
        
        VStack {
            Section {
                TextField.init("Type in a number", text: $inputString)

                TextField.init("How many bits to shift?", text: $shiftString)

            } header: {
                
                HStack {
                    Text("Input")
                        .font(.title2)
                    Spacer()
                }
            }
            
            Section {
                Picker("", selection: $selection) {
                    ForEach(0..<self.dir.count, id: \.self) {
                        Text(self.dir[$0])
                    }
                }
                .pickerStyle(.segmented)

                .labelsHidden()
            } header: {
                HStack {
                    Text("Sifting direction")
                        .font(.title2)
                        .padding(.top, 15)
                    Spacer()
                }
            }

            
            Section {
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        LeadingText("Dec:\t\t \(shiftedNumber)")
                        LeadingText("Bin:\t\t " + String(shiftedNumber, radix: 2))
                        LeadingText("Hex:\t\t " + String(format: "%X", shiftedNumber))
                    }
                    Spacer()
                }
            } header: {
                HStack {
                    Text("Values")
                        .font(.title2)
                        .padding(.init(top: 15, leading: 0, bottom: 2, trailing: 0))
                    Spacer()
                }
            }
        }
        .padding(15)
        .navigationTitle("BitShifter")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

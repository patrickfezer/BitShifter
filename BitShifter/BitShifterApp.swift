//
//  BitShifterApp.swift
//  BitShifter
//
//  Created by Patrick Fezer on 07.02.22.
//

import SwiftUI

@main
struct BitShifterApp: App {
    @State private var show = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 250, minHeight: 300)
            
// ********** This feature will be added in a later version **********
//                .sheet(isPresented: $show) {
//                    show = false
//                } content: {
//                    Button("Dismiss") {
//                        show = false
//                    }
//                    .background(Color.red)
//                }

//
//        }
//        .commands {
//            CommandMenu("Stuff") {
//                Button("Press me") {
//
//                }
//            }
//
//            CommandGroup(replacing: .appInfo) {
//                Button("About BitShifter") {
//                    show = true
//                    print("State: \(show)")
//                }
//            }
            
// *********************************************************************
        }
    }
}

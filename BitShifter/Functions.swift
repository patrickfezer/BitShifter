//
//  Functions.swift
//  BitShifter
//
//  Created by Patrick Fezer on 07.02.22.
//

import SwiftUI

// MARK: Functions
func LeadingText(_ input: String) -> some View {
    return Text(input).frame(width: nil, height: nil, alignment: .leading)
}

func StringToInt(_ input: String) -> Int {
    return Int(input) ?? 0
}

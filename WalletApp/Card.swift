//
//  Card.swift
//  WalletApp
//
//  Created by Juan Cruz on 31/05/2022.
//

import Foundation
import SwiftUI

struct Card : Hashable{
    let income: Int
    let expense: Int
    var balance : Int {
        income - expense
    }
    
    let cardNumber : String
    let imageName : String
    var isSelected = false
    var backgroundColor : Color {
        isSelected ? Color.primaryCyan : Color.primaryYellow
        
    }
    var textColor : Color {
        isSelected ? .white : .black
    }
    
    var incomePercentage : Int {
        Int (Double(balance) / Double(income) * 100)
    }
}

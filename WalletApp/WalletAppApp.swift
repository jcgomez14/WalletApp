//
//  WalletAppApp.swift
//  WalletApp
//
//  Created by Juan Cruz on 31/05/2022.
//

import SwiftUI

@main
struct WalletAppApp: App {
    @StateObject private var wallet = Wallet()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(wallet)
        }
    }
}

final class Wallet : ObservableObject {
    @Published var cards = cardsData
    
    var selectedCard: Card {
        cards.first(where: {$0.isSelected})!
        
    }
}





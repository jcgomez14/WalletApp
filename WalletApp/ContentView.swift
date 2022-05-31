//
//  ContentView.swift
//  WalletApp
//
//  Created by Juan Cruz on 31/05/2022.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        ScrollView {
            VStack(spacing: 35){
                HeaderView()
                CardListView()
                BalanceView()
                Spacer()
            }.padding(25)
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Wallet())
    }
}

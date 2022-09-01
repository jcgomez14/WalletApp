//
//  HeaderView.swift
//  WalletApp
//
//  Created by Juan Cruz on 31/05/2022.
//

import SwiftUI

struct HeaderView: View {
   
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Welcome")
                    .font(.callout)
                    .foregroundColor(Color(.systemGray3))
                Text("Name User")
                    .font(.title)
                    .bold()
            }
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

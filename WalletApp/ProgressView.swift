//
//  ProgressView.swift
//  WalletApp
//
//  Created by Juan Cruz on 31/05/2022.
//

import SwiftUI

struct ProgressView: View {
    @Binding var percentage : Int
    var body: some View {
  
        GeometryReader { proxy in
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.primaryYellow)
                    .frame(height: 20)
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.primaryCyan)
                    .frame(width: proxy.size.width * CGFloat(percentage)/100, height: 20)
            }
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(percentage: .constant(50))
    }
}

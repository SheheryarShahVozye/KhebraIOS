//
//  OrderButton.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct NewOrderButton: View {
    var title: String = "Issuance of invoice"
    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .frame(width: 105, height: 50, alignment: .center)
            .foregroundColor(Color("buttonbg"))
            .overlay(
                HStack{
                    Text(title)
                        .font(.system(size: 16))
                        .foregroundColor(Color("White"))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
            )

    }
}

struct NewOrderButton_Previews: PreviewProvider {
    static var previews: some View {
        NewOrderButton()
    }
}

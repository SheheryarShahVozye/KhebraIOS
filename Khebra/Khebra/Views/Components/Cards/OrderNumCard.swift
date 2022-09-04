//
//  OrderNumCard.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct OrderNumCard: View {
    var orderNumber: String = "58246"
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 5)
                 .foregroundColor(Color("White"))
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color("fontBlue"),lineWidth: 0.5)
                .overlay(
                    HStack{
                        Text("Order No")
                            .font(.system(size: 14))
                            .foregroundColor(Color("B2C1E3"))
                        Text("#" + orderNumber)
                            .font(.system(size: 14))
                            .foregroundColor(Color("black"))
                        Spacer()
                        Image("plumbing")
                            .scaledToFit()
                    }.padding(.horizontal)
                )
                
        }.frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .center)
    }
}

struct OrderNumCard_Previews: PreviewProvider {
    static var previews: some View {
        OrderNumCard()
    }
}

//
//  PointCard.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct PointCard: View {
    var title: String = "Redeem 1000 points"
    var subTitle: String = "FOR 10 SAR"
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 5)
                 .foregroundColor(Color("White"))
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color("fontBlue"),lineWidth: 0.5)
                .overlay(
                    VStack{
                        HStack{
                            Text(title)
                                .font(.system(size: 12))
                                .fontWeight(.regular)
                                .foregroundColor(Color("5A5A5A"))
                            Spacer()
                        }
                        HStack{
                            Text(subTitle)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("fontBlue"))
                            Spacer()
                        }
                        
                    }.padding(.horizontal,10)
                )
        }.frame(width: 150, height: 55, alignment: .center)
    }
}

struct PointCard_Previews: PreviewProvider {
    static var previews: some View {
        PointCard()
    }
}

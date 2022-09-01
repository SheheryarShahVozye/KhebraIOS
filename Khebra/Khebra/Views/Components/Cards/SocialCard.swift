//
//  SocialCard.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct SocialCard: View {
    var imageName: String = "twitter"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .foregroundColor(Color("White"))
            RoundedRectangle(cornerRadius: 1)
                .stroke(Color("B2C1E3"),lineWidth: 1)
                .overlay(
                
                    Image(imageName)
                        .scaledToFit()
                )
        }
        .frame(width: 47, height: 42, alignment: .center)
    }
}

struct SocialCard_Previews: PreviewProvider {
    static var previews: some View {
        SocialCard()
    }
}

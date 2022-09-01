//
//  CustomerReviewCard.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct CustomerReviewCard: View {
    var Name: String = "Khailed Aziz"
    var dateTime: String = "6/6/2022, 05:30 PM"
    var reviewMsg: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
               .foregroundColor(Color("White"))
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color("B2C1E3"),lineWidth: 1)
                .overlay(
                    VStack{
                        HStack{
                            Text(Name)
                                .font(.system(size: 14))
                                .foregroundColor(Color("black"))
                            Spacer()
                            Text(dateTime)
                                .font(.system(size: 12))
                                .foregroundColor(Color("B2C1E3"))
                        }.padding(.top,5)
                        HStack {
                           
                            Text(reviewMsg)
                                .multilineTextAlignment(.leading)
                                .font(.system(size: 14))
                                .foregroundColor(Color("5A5A5A"))
                            Spacer()
                        }.padding(.top,5)
                           
                        Spacer()
                    }.padding(.horizontal)
                        .padding(.vertical,5)
                )
        }.frame(width: UIScreen.main.bounds.width - 50, height: 110, alignment: .center)

          
    }
}

struct CustomerReviewCard_Previews: PreviewProvider {
    static var previews: some View {
        CustomerReviewCard()
    }
}

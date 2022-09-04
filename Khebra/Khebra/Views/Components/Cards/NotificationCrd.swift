//
//  NotificationCrd.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct NotificationCard: View {
    var text: String = "The invoice has been successfully paid from customer number 000000"
    var imageName: String = "invoice"
    var timeStamp: String = "04:30 PM"
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 0)
                 .foregroundColor(Color("White"))
            
            RoundedRectangle(cornerRadius: 0)
                .stroke(Color("B2C1E3"),lineWidth: 0.5)
                .overlay(
                    HStack{
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 45, height: 45, alignment: .center)
                            .foregroundColor(Color("FAFAFA"))
                            .shadow(radius: 0.5)
                            .overlay(
                                Image(imageName)
                                    .scaledToFit()
                            )
                        
                        VStack{
                            HStack{
                                Text(text)
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("5A5A5A"))
                                Spacer()
                            }
                            HStack{
                                Spacer()
                                Text(timeStamp)
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("5A5A5A"))
                                
                            }
                        }.padding(.leading,5)
                        
                        Spacer()
                        
                        
                        
                    }.padding(.horizontal)
                )
        }.frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
    }
}

struct NotificationCard_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCard()
    }
}

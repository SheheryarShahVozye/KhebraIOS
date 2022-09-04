//
//  TechOrderCard.swift
//  Khebra
//
//  Created by Sheheryar on 03/09/2022.
//

import SwiftUI

struct TechOrderCard: View {
    var orderNumber: String = "58246"
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 5)
                 .foregroundColor(Color("White"))
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color("fontBlue"),lineWidth: 0.5)
                .overlay(
                    HStack{
                        VStack{
                            HStack{
                                Text("Order No")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("B2C1E3"))
                                Text("#" + orderNumber)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("black"))
                                
                                Spacer()
                                
                               
                            }.padding(.horizontal)
                            
                            HStack{
                                Text("Name")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("B2C1E3"))
                                Text("Mohammed Abed ElAzizi")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("black"))
                                
                                Spacer()
                                
                               
                            }.padding(.horizontal)
                            
                            Divider()
                                .padding(.horizontal)
                            
                            HStack{
                                Image("service")
                                    .scaledToFit()
                                Text("plumbing")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("B2C1E3"))
                                Image("distance")
                                    .scaledToFit()
                                
                                Text("25 KM")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }.padding(.horizontal)
                                
                        }
                        RoundedRectangle(cornerRadius: 2)
                            .frame(width: 93, height: 87, alignment: .center)
                            .foregroundColor(Color("buttonbg"))
                            .overlay(
                                Text("Apply now")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("White"))
                                    .fontWeight(.medium)
                            ).padding(.trailing)
                    }
                    
                )
        }.frame(width: UIScreen.main.bounds.width - 50, height: 100, alignment: .center)
    }
}

struct TechOrderCard_Previews: PreviewProvider {
    static var previews: some View {
        TechOrderCard()
    }
}

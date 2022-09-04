//
//  FavTechnicianCard.swift
//  Khebra
//
//  Created by Sheheryar on 02/09/2022.
//

import SwiftUI

struct FavTechnicianCard: View {
    var techName: String = "Mohaned Mostifa"
    var serviceNAME: String = "Plumbing"
    var distance: String = "25 KM"
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: UIScreen.main.bounds.width - 50, height: 100, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(radius: 0.5)
            .overlay(
                VStack{
                    VStack{
                        HStack{
                            Text(techName)
                                .font(.system(size: 14))
                                .foregroundColor(Color("black"))
                                .fontWeight(.regular)
                            Spacer()
                        }.padding(.horizontal,10)
                        HStack{
                            Image("service")
                            Text(serviceNAME)
                                .font(.system(size: 14))
                                .foregroundColor(Color("B2C1E3"))
                                .fontWeight(.regular)
                            
                            Image("distance")
                            Text(distance)
                                .font(.system(size: 14))
                                .foregroundColor(Color("B2C1E3"))
                                .fontWeight(.regular)
                            Spacer()
                        }.padding(.horizontal,10)
                    }.padding(.top,5)
                  
                    Spacer()
                    HStack{
                        Spacer()
                        Text("Send Order")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color("White"))
                            .padding(5)
                        Spacer()
                    }.background(RoundedCorners(color: Color("buttonbg"), tl: 0, tr: 0, bl: 5, br: 5) )
                }
            )
    }
}

struct FavTechnicianCard_Previews: PreviewProvider {
    static var previews: some View {
        FavTechnicianCard()
    }
}

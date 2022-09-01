//
//  TechnicianCard.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct TechnicianCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .frame(width: UIScreen.main.bounds.width - 30, height: 120, alignment: .center)
            .foregroundColor(Color("White"))
            .overlay(
                HStack{
                    VStack{
                        Spacer()
                        Image("arrowRequest")
                            .scaledToFit()
                        Text("Request the technician")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color("White"))
                            .multilineTextAlignment(.center)
                        Spacer()
                        

                    }.frame(width: 120).background(Color("fontBlue"))
                       
                    Spacer()
                    VStack{
                        Spacer()
                        HStack{
                            VStack{
                                Image("User")
                                    .scaledToFit()
                            }.frame(width: 20, height: 20, alignment: .center)
                            
                            
                            Text("Mohaned Mostifa")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("black"))
                            Spacer()

                        }
                        HStack{
                            VStack{
                                Image("distance")
                                .scaledToFit()
                            }.frame(width: 20, height: 20, alignment: .center)
                            Text("Distance:")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("B2C1E3"))
                            Text("25 KM")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("5A5A5A"))
                            Spacer()

                        }
                        HStack{
                            VStack{
                                Image("star")
                                    .scaledToFit()
                            }.frame(width: 20, height: 20, alignment: .center)
                            Text("Rating:")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("B2C1E3"))
                            Text("4.8")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("buttonbg"))
                            Spacer()

                        }
                        HStack{
                            VStack{
                                Image("fulfilled")
                                    .scaledToFit()
                            }.frame(width: 20, height: 20, alignment: .center)
                            Text("Fulfilled orders:")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("B2C1E3"))
                            Text("250")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("5A5A5A"))
                            Spacer()

                        }
                        Spacer()
                    }
                    .padding(.leading,5)
                   // Spacer()
                }
            )
    }
}

struct TechnicianCard_Previews: PreviewProvider {
    static var previews: some View {
        TechnicianCard()
    }
}

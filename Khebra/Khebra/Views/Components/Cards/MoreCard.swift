//
//  MoreCard.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct MoreCard: View {
    var name: String = "Orders"
    var Imagename: String = "orders-grat"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .foregroundColor(Color("White"))
            RoundedRectangle(cornerRadius: 1)
                .stroke(Color("B2C1E3"),lineWidth: 1)
                .overlay(
                    HStack{
                        Group{
                            Image(Imagename)
                                .scaledToFit()
                        }.frame(width: 25, height: 25, alignment: .center)
                      
                        Text(name)
                            .font(.system(size: 16))
                            .foregroundColor(Color("5A5A5A"))
                        
                        Spacer()
                        
                    }.padding(.leading,20)
                )
        }
        .frame(width: 155, height: 60, alignment: .center)
    }
}

struct MoreCard_Previews: PreviewProvider {
    static var previews: some View {
     //   MoreCard()
        MoreCardWallet()
    }
}

struct MoreCardWallet: View {
    var name: String = "wallet"
    var Imagename: String = "orders-grat"
    var value: String = "0.00"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .foregroundColor(Color("White"))
            RoundedRectangle(cornerRadius: 1)
                .stroke(Color("B2C1E3"),lineWidth: 1)
                .overlay(
                    VStack{
                        Spacer()
                        HStack{
                            VStack{
                                Group{
                                    Image(Imagename)
                                        .scaledToFit()
                                }.frame(width: 25, height: 25, alignment: .center)
                                Spacer()
                                
                            }
                          
                            VStack{
                                HStack {
                                    Text(name)
                                        .font(.system(size: 16))
                                    .foregroundColor(Color("5A5A5A"))
                                    
                                    Spacer()
                                }
                                HStack {
                                    Text(value)
                                            .font(.system(size: 16))
                                        .foregroundColor(Color("buttonbg"))
                                    Spacer()
                                }
                                Spacer()
                            }
                          
                            
                            Spacer()
                            
                        }
                        .padding(.leading)
                       
                    }
                   
                )
        }
        .frame(width: 155, height: 60, alignment: .center)
    }
}

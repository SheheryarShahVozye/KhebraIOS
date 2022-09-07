//
//  TechOrderDetailCard.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct TechOrderDetailCard: View {
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
                                }
                                Image("plumbing")
                                    .scaledToFit()
                                    .padding(.trailing)
                            }
                           
                           
                            
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
                       
                    }
                    
                )
        }.frame(width: UIScreen.main.bounds.width - 50, height: 100, alignment: .center)
    }
}

struct TechOrderCompletedCard: View {
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
                                }
                                Image("plumbing")
                                    .scaledToFit()
                                    .padding(.trailing)
                            }
                           
                           
                            HStack{
                                Image("address")
                                    .scaledToFit()
                                Text("As Sahafah, Olaya St. 6531, 3059 Riyadh...")
                                    .lineLimit(1)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("5A5A5A"))
                                Spacer()
                            }.padding(.horizontal)
                           
                            
                            HStack{
                                Image("calendar_month")
                                    .scaledToFit()
                                Text("6/9/2022")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                               
                                ZStack{
                                    RoundedRectangle(cornerRadius: 2)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 2)
                                        .stroke(Color("buttonbg"),lineWidth: 1)
                                        .overlay(
                                            Text("Paid Cash")
                                                .font(.system(size: 14))
                                                .foregroundColor(Color("buttonbg"))
                                                .fontWeight(.medium)

                                        )
                                    
                                }.frame(width: 93, height: 25, alignment: .center)
                                
                               
                            }.padding(.horizontal)
                                
                        }
                       
                    }
                    
                )
        }.frame(width: UIScreen.main.bounds.width - 50, height: 120, alignment: .center)
    }
}


struct TechOrderDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        TechOrderCompletedCard()
    }
}

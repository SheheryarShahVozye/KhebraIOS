//
//  MyOrderCard.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct MyOrderCard: View {
    var orderNumber: String = "58246"
    var status: String = "Current"
    var address: String = "As Sahafah, Olaya St. 6531, 30..."
    var serviceType: String = "Plumbing"
    var timeSlot: String = "6/6/2022, 05:30 PM"
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: UIScreen.main.bounds.width - 50, height: 125, alignment: .center)
            .foregroundColor(Color("White"))
            .overlay(
                VStack{
                    Spacer()
                    HStack{
                        Text("Order No")
                            .font(.system(size: 14))
                            .foregroundColor(Color("B2C1E3"))
                        Text("#" + orderNumber)
                            .font(.system(size: 14))
                            .foregroundColor(Color("black"))
                        
                        Spacer()
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 2)
                                .foregroundColor(Color("White"))
                            
                            RoundedRectangle(cornerRadius: 2)
                                .stroke(Color("buttonbg"),lineWidth: 1)
                                .overlay(
                                    Text(status)
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("buttonbg"))
                                )
                            
                        }.frame(width: 80, height: 25, alignment: .center)
                    }.padding(.horizontal)
                       
                    HStack{
                        VStack{
                            HStack{
                                Image("address")
                                    .scaledToFit()
                                Text(address)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("5A5A5A"))
                                    .lineLimit(1)
                                Spacer()
                            }
                            HStack{
                                RoundedRectangle(cornerRadius: 0)
                                    .frame(height: 1, alignment: .center)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }
                           
                            HStack{
                                
                                Image("service")
                                    .scaledToFit()
                                Text(serviceType)
                                    .font(.system(size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Image("time")
                                    .scaledToFit()
                                
                                Text(timeSlot)
                                    .font(.system(size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }
                            
                            Spacer()
                            
                        }
                      
                        Spacer()
                        
                        RoundedRectangle(cornerRadius: 4)
                            .frame(width: 80, height: 60, alignment: .center)
                            .foregroundColor(Color("buttonbg"))
                            .overlay(
                             Text("Postponement")
                                .font(.system(size: 10))
                                .foregroundColor(Color("White"))
                            )

                    }.padding(.horizontal)
                    Spacer()
                }
            )
    }
}

struct MyOrderCard_Previews: PreviewProvider {
    static var previews: some View {
     //   MyOrderCard()
        //   MyOrderCompletedCard()
        MyOrderCompletedCancelled()
    }
}

struct MyOrderCompletedCard: View {
    var orderNumber: String = "58246"
    var status: String = "Completed"
    var address: String = "As Sahafah, Olaya St. 6531, 30..."
    var serviceType: String = "Plumbing"
    var timeSlot: String = "6/6/2022, 05:30 PM"
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: UIScreen.main.bounds.width - 50, height: 125, alignment: .center)
            .foregroundColor(Color("White"))
            .overlay(
                VStack{
                    Spacer()
                    HStack{
                        Text("Order No")
                            .font(.system(size: 14))
                            .foregroundColor(Color("B2C1E3"))
                        Text("#" + orderNumber)
                            .font(.system(size: 14))
                            .foregroundColor(Color("black"))
                        
                        Spacer()
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 2)
                                .foregroundColor(Color("White"))
                            
                            RoundedRectangle(cornerRadius: 2)
                                .stroke(Color("137D3B"),lineWidth: 1)
                                .overlay(
                                    Text(status)
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("137D3B"))
                                )
                            
                        }.frame(width: 80, height: 25, alignment: .center)
                    }.padding(.horizontal)
                       
                    HStack{
                        VStack{
                            HStack{
                                Image("address")
                                    .scaledToFit()
                                Text(address)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("5A5A5A"))
                                    .lineLimit(1)
                                Spacer()
                            }
                            HStack{
                                RoundedRectangle(cornerRadius: 0)
                                    .frame(height: 1, alignment: .center)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }
                           
                            HStack{
                                
                                Image("service")
                                    .scaledToFit()
                                Text(serviceType)
                                    .font(.system(size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Image("time")
                                    .scaledToFit()
                                
                                Text(timeSlot)
                                    .font(.system(size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }
                            
                            Spacer()
                            
                        }
                      
                        Spacer()
                        
                        VStack{
                            ZStack{
                
                                
                                RoundedRectangle(cornerRadius: 2)
                                    .foregroundColor(Color("buttonbg"))
                                    .overlay(
                                        Text("Warranty")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("White"))
                                    )
                                
                            }.frame(width: 80, height: 25, alignment: .center)
                            
                            ZStack{
                
                                
                                RoundedRectangle(cornerRadius: 2)
                                    .foregroundColor(Color("buttonbg"))
                                    .overlay(
                                        Text("Rating")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("White"))
                                    )
                                
                            }.frame(width: 80, height: 25, alignment: .center)
                           
                          
                            
                           
                        }
                      

                    }.padding(.horizontal)
                    Spacer()
                }
            )
    }
}

struct MyOrderCompletedCancelled: View {
    var orderNumber: String = "58246"
    var status: String = "Cancelled"
    var address: String = "As Sahafah, Olaya St. 6531, 30..."
    var serviceType: String = "Plumbing"
    var timeSlot: String = "6/6/2022, 05:30 PM"
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: UIScreen.main.bounds.width - 50, height: 125, alignment: .center)
            .foregroundColor(Color("White"))
            .overlay(
                VStack{
                    Spacer()
                    HStack{
                        Text("Order No")
                            .font(.system(size: 14))
                            .foregroundColor(Color("B2C1E3"))
                        Text("#" + orderNumber)
                            .font(.system(size: 14))
                            .foregroundColor(Color("black"))
                        
                        Spacer()
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 2)
                                .foregroundColor(Color("White"))
                            
                            RoundedRectangle(cornerRadius: 2)
                                .stroke(Color("F44336"),lineWidth: 1)
                                .overlay(
                                    Text(status)
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("F44336"))
                                )
                            
                        }.frame(width: 80, height: 25, alignment: .center)
                    }.padding(.horizontal)
                       
                    HStack{
                        VStack{
                            HStack{
                                Image("address")
                                    .scaledToFit()
                                Text(address)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("5A5A5A"))
                                    .lineLimit(1)
                                Spacer()
                            }
                            HStack{
                                RoundedRectangle(cornerRadius: 0)
                                    .frame(height: 1, alignment: .center)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }
                           
                            HStack{
                                
                                Image("service")
                                    .scaledToFit()
                                Text(serviceType)
                                    .font(.system(size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Image("time")
                                    .scaledToFit()
                                
                                Text(timeSlot)
                                    .font(.system(size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }
                            
                            Spacer()
                            
                        }
                      
                        Spacer()
                        
                      

                    }.padding(.horizontal)
                    Spacer()
                }
            )
    }
}

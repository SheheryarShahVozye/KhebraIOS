//
//  IncentivePenaltyScreen.swift
//  Khebra
//
//  Created by Sheheryar on 06/09/2022.
//

import SwiftUI

struct IncentivePenaltyScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Incentives & Penalties")
                ScrollView{
                    VStack{
                        HStack {
                            Text("Incestives")
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                                .foregroundColor(Color("fontBlue"))
                            .padding(.top)
                            
                            Spacer()
                        }.padding(.leading)
                        
                        RoundedRectangle(cornerRadius: 2)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 180, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(radius: 1)
                            .overlay(
                                ZStack{
                                    VStack{
                                        VStack{
                                            HStack{
                                                Text("Completed orders")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                
                                              
                                                Text("Get 10 SAR")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                
                                            }
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                        VStack{
                                            HStack{
                                                Text("Apply for orders")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                               
                                                Text("Get 10 SAR")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                
                                            }
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                        
                                        VStack{
                                            HStack{
                                                Text("Arrive on time")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                               
                                                Text("Get 10 SAR")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                
                                            }
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                      
                                        VStack{
                                            HStack{
                                                Text("High rating")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                               
                                                Text("Get 10 SAR")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                
                                            }
                                           
                                        }.padding(.horizontal)
                                    }
                                    HStack{
                                        Text("Completed orders")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("5A5A5A"))
                                            .opacity(0)
                                        Divider()
                                    }
                                }
                                
                              
                            )
                        
                        HStack {
                            Text("Penalties")
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                                .foregroundColor(Color("fontBlue"))
                            .padding(.top)
                            
                            Spacer()
                        }.padding(.leading)
                        
                        RoundedRectangle(cornerRadius: 2)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 240, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(radius: 1)
                            .overlay(
                                ZStack{
                                    VStack{
                                        VStack{
                                            HStack{
                                                Text("Request from the customer to cancel the order")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                
                                              
                                                Text("Suspend the account for one day")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                    .frame(width: 130)
                                                    .lineLimit(2)
                                                    .multilineTextAlignment(.leading)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                
                                            }
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                        VStack{
                                            HStack{
                                                Text("Low rating")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                               
                                                Text("Suspend the account for one day")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                    .frame(width: 130)
                                                    .lineLimit(2)
                                                    .multilineTextAlignment(.leading)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                
                                            }
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                        
                                        VStack{
                                            HStack{
                                                Text("Various cancellation rates")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                               
                                                Text("Various cancellation rates")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                    .frame(width: 130)
                                                    .lineLimit(2)
                                                    .multilineTextAlignment(.leading)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                
                                            }
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                      
                                        VStack{
                                            HStack{
                                                Text("Arrived late")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                               
                                                Text("Suspend the account for one day")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                    .frame(width: 130)
                                                    .lineLimit(2)
                                                    .multilineTextAlignment(.leading)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                
                                            }
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                           
                                        }.padding(.horizontal)
                                       
                                       
                                        
                                        VStack{
                                            HStack{
                                                Text("High price")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                               
                                                Text("Suspend the account for one day")
                                                    .font(.system(size: 12))
                                                    .foregroundColor(Color("5A5A5A"))
                                                    .frame(width: 130)
                                                    .lineLimit(2)
                                                    .multilineTextAlignment(.leading)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                
                                            }
                                           
                                        }.padding(.horizontal)
                                    }
                                    .padding(.vertical)
                                   
                                }
                                
                              
                            )
                    }.padding(.horizontal)
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct IncentivePenaltyScreen_Previews: PreviewProvider {
    static var previews: some View {
        IncentivePenaltyScreen()
    }
}

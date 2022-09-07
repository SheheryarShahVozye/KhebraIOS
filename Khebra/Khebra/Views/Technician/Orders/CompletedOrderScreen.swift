//
//  CompletedOrderScreen.swift
//  Khebra
//
//  Created by Sheheryar on 04/09/2022.
//

import SwiftUI

struct CompletedOrderScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Completed Order Details")
                
                ScrollView{
                    VStack{
                        OrderNumCard()
                        HStack{
                            VStack{
                                HStack{
                                    VStack {
                                        Image("darkBluemarker")
                                            .scaledToFit()
                                        Spacer()
                                    }.padding(.bottom,5)
                                    VStack{
                                        HStack {
                                            Text("Order Location")
                                                .font(.system(size: 16))
                                                .fontWeight(.bold)
                                            .foregroundColor(Color("fontBlue"))
                                            Spacer()
                                        }
                                       
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                  .frame(height: 1)
                                                  .foregroundColor(Color("B2C1E3"))
                                        
                                    }
                                    Spacer()
                                }
                            }.padding(.horizontal)
                                .padding(.top,20)
                        }
                        VStack{
                            Image("MapSmall")
                                .resizable()
                               
                            
                        }.frame(width: UIScreen.main.bounds.width - 50, height: 180, alignment: .center)
                            .padding(.vertical,10)
                       
                        VStack{
                            HStack{
                                VStack {
                                    Image("user_big_outlined")
                                        .resizable()
                                        .frame(width: 15, height: 15, alignment: .center)
                                        .scaledToFit()
                                    Spacer()
                                }
                                VStack{
                                    HStack{
                                        Text("Customer")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("B2C1E3"))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("Mohammed Abed ElAzizi")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("5A5A5A"))
                                        Spacer()
                                    }.padding(.top,1)
                                }.padding(.horizontal,5)
                            }.padding(.horizontal,20)
                            HStack{
                                VStack {
                                    Image("time")
                                        .resizable()
                                        .frame(width: 15, height: 15, alignment: .center)
                                        .scaledToFit()
                                    Spacer()
                                }
                                VStack{
                                    HStack{
                                        Text("Date & time")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("B2C1E3"))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("6/6/2022, 05:30 PM")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("5A5A5A"))
                                        Spacer()
                                    }.padding(.top,1)
                                }.padding(.horizontal,5)
                            }.padding(.horizontal,20)
                            
                            HStack{
                                VStack {
                                    Image("time")
                                        .resizable()
                                        .frame(width: 15, height: 15, alignment: .center)
                                        .scaledToFit()
                                    Spacer()
                                }
                                VStack{
                                    HStack{
                                        Text("Address")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("B2C1E3"))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("As Sahafah, Olaya St. 6531, 3059 Riyadh 13321, Saudi Arabia")
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("5A5A5A"))
                                        Spacer()
                                    }.padding(.top,1)
                                }.padding(.horizontal,5)
                            }.padding(.horizontal,20)
                            HStack{
                                HStack{
                                    VStack {
                                        Image("invoiceLightBlue")
                                           
                                            .scaledToFit()
                                        Spacer()
                                    }
                                    VStack{
                                        HStack{
                                            Text("Invoice No.")
                                                .font(.system(size: 14))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("B2C1E3"))
                                            Spacer()
                                        }
                                        HStack{
                                            Text("85465")
                                                .font(.system(size: 14))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                        }.padding(.top,1)
                                    }.padding(.horizontal,5)
                                }.padding(.horizontal,20)
                                
                                HStack{
                                    VStack {
                                        Image("paymentmethod")

                                            .scaledToFit()
                                        Spacer()
                                    }
                                    VStack{
                                        HStack{
                                            Text("Payment status")
                                                .font(.system(size: 14))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("B2C1E3"))
                                            Spacer()
                                        }
                                        HStack{
                                            Text("Paid")
                                                .font(.system(size: 14))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                        }.padding(.top,1)
                                    }.padding(.horizontal,5)
                                }.padding(.horizontal,20)
                            }
                            HStack{
                                HStack{
                                    VStack {
                                        Image("pricelist")
                                           
                                            .scaledToFit()
                                        Spacer()
                                    }
                                    VStack{
                                        HStack{
                                            Text("Total amount")
                                                .font(.system(size: 14))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("B2C1E3"))
                                            Spacer()
                                        }
                                        HStack{
                                            Text("720 R.S")
                                                .font(.system(size: 14))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                        }.padding(.top,1)
                                    }.padding(.horizontal,5)
                                }.padding(.horizontal,20)
                                
                                HStack{
                                    VStack {
                                        Image("paymentmethod")

                                            .scaledToFit()
                                        Spacer()
                                    }
                                    VStack{
                                        HStack{
                                            Text("Payment Method")
                                                .font(.system(size: 14))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("B2C1E3"))
                                            Spacer()
                                        }
                                        HStack{
                                            Text("Cash / Credit Card")
                                                .font(.system(size: 14))
                                                .fontWeight(.medium)
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                        }.padding(.top,1)
                                    }.padding(.horizontal,5)
                                }.padding(.horizontal,20)
                            }
                          
                            
                        }
                        .padding(.top)
                        
                      
                    }
                }
                BottomNavTechnician()
            }
          
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct CompletedOrderScreen_Previews: PreviewProvider {
    static var previews: some View {
        CompletedOrderScreen()
    }
}

//
//  CreateOrder.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct CreateOrder: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var details: String = ""
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Order Details")
                ScrollView{
                    VStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 5)
                                 .foregroundColor(Color("White"))
                            
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("fontBlue"),lineWidth: 0.5)
                                .overlay(
                                    VStack{
                                
                                            VStack{
                                                VStack{
                                                    HStack{
                                                        Image("doubleTick")
                                                            .scaledToFit()
                                                        Text("make sure you agree a price beforehand")
                                                            .font(.system(size: 16))
                                                            .foregroundColor(Color("464646"))
                                                            .fontWeight(.regular)
                                                        
                                                        Spacer()
                                                    }.padding(.horizontal)
                                                    
                                                    Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                              .frame(height: 1)
                                                              .foregroundColor(Color("B2C1E3"))
                                                              .padding(.horizontal)
                                                }
                                                
                                                VStack{
                                                    HStack{
                                                        Image("doubleTick")
                                                            .scaledToFit()
                                                        Text("30 days warranty for hand word")
                                                            .font(.system(size: 16))
                                                            .foregroundColor(Color("464646"))
                                                            .fontWeight(.regular)
                                                        
                                                        Spacer()
                                                    }.padding(.horizontal)
                                                    
                                                    Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                              .frame(height: 1)
                                                              .foregroundColor(Color("B2C1E3"))
                                                              .padding(.horizontal)
                                                }
                                                
                                                VStack{
                                                    HStack{
                                                        Image("doubleTick")
                                                            .scaledToFit()
                                                        Text("Free detection")
                                                            .font(.system(size: 16))
                                                            .foregroundColor(Color("464646"))
                                                            .fontWeight(.regular)
                                                        
                                                        Spacer()
                                                    }.padding(.horizontal)
                                                    
                                                    Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                              .frame(height: 1)
                                                              .foregroundColor(Color("B2C1E3"))
                                                              .padding(.horizontal)
                                                }
                                                
                                                VStack{
                                                    HStack{
                                                        Image("doubleTick")
                                                            .scaledToFit()
                                                        Text("7 SAR spare parts delivery cost, if any")
                                                            .font(.system(size: 16))
                                                            .foregroundColor(Color("464646"))
                                                            .fontWeight(.regular)
                                                        
                                                        Spacer()
                                                    }.padding(.horizontal)
                                                    
                                                   
                                                }
                                               
                                               
                                            }
                                        
                                    }
                                )
                        
                        }.frame(width: UIScreen.main.bounds.width - 50, height: 200, alignment: .center)
                        
                        VStack{
                            HStack{
                                Text("Set Order time")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("black"))
                                Spacer()
                            }.padding(.horizontal,30)
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Spacer()
                                HStack{
                                    Spacer()
                                    Image("ondemand")
                                        .scaledToFit()
                                    Text("On Demand")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                    Spacer()
                                }.padding(.vertical,10)
                                    .padding(.horizontal,10)
                                    .background(Color("White"))
                                    .border(Color("B2C1E3").opacity(0.6))
                                Group{
                                    
                                    HStack{
                                        Spacer()
                                        Image("appointment")
                                            .scaledToFit()
                                        Text("Scheduled")
                                            .font(.system(size: 16))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("B2C1E3"))
                                        Spacer()
                                    }.padding(.vertical,10)
                                        .padding(.horizontal,10)
                                        .background(Color("FAFCFF"))
                                        .border(Color("B2C1E3").opacity(0.6))
                                }.offset(x:-10)
                                    
                                Spacer()
                                    
                             
                                    
                            }.frame(width: UIScreen.main.bounds.width - 50)
                        }
                       
                        VStack{
                            HStack{
                                Text("More Details")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("black"))
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 110, alignment: .center)
                                .foregroundColor(Color("White"))
                                .overlay(
                                    TextEditor(text: $details)
                                        .padding(.leading)
                                        
                                )
                           
                        }
                        
                        VStack{
                            HStack{
                                Text("Add Photo")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("black"))
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            HStack{
                                Image("Rectangle 99")
                                    .scaledToFit()
                                
                                Spacer()
                            }.padding(.horizontal,30)
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                Text("Choose your payment method")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("black"))
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                Image("apple-pay-logo-F68C9AC252-seeklogo.com")

                                            }
                                        )
                                }
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                Image("stcpay")
                                            }
                                        )
                                }
                                   
                                    
                            }.frame(width: UIScreen.main.bounds.width - 50,height: 45)
                            
                            
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                Image("tamara")

                                            }
                                        )
                                }
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                Image("Visa_Inc._logo")
                                            }
                                        )
                                }
                                   
                                    
                            }.frame(width: UIScreen.main.bounds.width - 50,height: 45)
                                .padding(.vertical)
                            
                            
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(Color("White"))
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color("B2C1E3"),lineWidth: 1)
                                    .overlay(
                                        Text("Cash")
                                            .font(.system(size: 18))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("fontBlue"))
                                    )
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                            
                            HStack{
                                Image("Rectangle 99")
                                    .scaledToFit()
                                
                                Spacer()
                            }.padding(.horizontal,30)
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                Group{
                                    VStack{
                                        Image("address")
                                            .scaledToFit()
                                        Spacer()
                                    }
                                }.frame(width: 25, height: 25, alignment: .center)
                               
                                Spacer()
                                VStack{
                                    HStack {
                                        Text("Address")
                                            .font(.system(size: 14))
                                        .foregroundColor(Color("B2C1E3"))
                                        
                                        Spacer()
                                    }
                                    HStack {
                                        Text("As Sahafah, Olaya St. 6531, 3059 Riyadh 13321, Saudi Arabia")
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("5A5A5A"))
                                           
                                        
                                        Spacer()
                                    }
                                   
                                }
                               
                                
                                Spacer()
                                
                                VStack {
                                    Text("Edit")
                                        .font(.system(size: 14))
                                    .foregroundColor(Color("buttonbg"))
                                    Spacer()
                                }
                              
                            }.padding(.horizontal,30)
                           
                        }.padding(.vertical)
                       
                        VStack{
                            HStack{
                                Group{
                                    VStack{
                                        Image("service")
                                            .scaledToFit()
                                        Spacer()
                                    }
                                }.frame(width: 25, height: 25, alignment: .center)
                               
                                Spacer()
                                VStack{
                                    HStack {
                                        Text("Service")
                                            .font(.system(size: 14))
                                        .foregroundColor(Color("B2C1E3"))
                                        
                                        Spacer()
                                    }
                                    HStack {
                                        Text("Plumbing")
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("5A5A5A"))
                                           
                                        
                                        Spacer()
                                    }
                                   
                                }
                               
                                
                                Spacer()
                                
                                VStack {
                                    Text("Edit")
                                        .font(.system(size: 14))
                                    .foregroundColor(Color("buttonbg"))
                                    Spacer()
                                }
                              
                            }.padding(.horizontal,30)
                           
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Group{
                                    Image("coupon")
                                        .scaledToFit()
                                }.frame(width: 25, height: 25, alignment: .center)
                               

                                Text("Coupon code")
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: .constant(""), placeHolder: "Coupon Code")
                            
                            CustomButton(title: "Send Order", callback: {
                                viewRouter.currentPage = "OrderDetailScreen"
                            }).padding(.vertical)
                        }
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct CreateOrder_Previews: PreviewProvider {
    static var previews: some View {
        CreateOrder()
    }
}

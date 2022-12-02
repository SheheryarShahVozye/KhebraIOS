//
//  OrderDetailScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct OrderDetailScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var orderAccepted: Bool = false
    @State var waitingForTech: Bool = true
    @EnvironmentObject var serviceManager: ServiceManager
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
                                .stroke(Color("B2C1E3"),lineWidth: 1)
                                .overlay(
                                    VStack{
                                        VStack{
                                            HStack{
                                                HStack{
                                                    Image("orderNo")
                                                        .scaledToFit()
                                                    Text("Order No.")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.leading)
                                                
                                                Spacer()
                                                Text("#" + String(serviceManager.createdOrderData?.orderNumber ?? 0))
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("fontBlue"))
                                                    .padding(.trailing,20)
                                            }
                                            
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                            .padding(.top,5)
                                       
                                        VStack{
                                            HStack{
                                                HStack{
                                                    Image("orderstatus")
                                                        .scaledToFit()
                                                    Text("Order Status")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.leading)
                                                
                                                Spacer()
                                                Text(serviceManager.createdOrderData?.status ?? "")
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("046006"))
                                                    .padding(.trailing,20)
                                            }
                                            
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                            .padding(.top,5)
                                       
                                        VStack{
                                            HStack{
                                                HStack{
                                                    Image("service")
                                                        .scaledToFit()
                                                    Text("Service")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.leading)
                                                
                                                Spacer()
                                                Text(serviceManager.createdOrderData?.serviceName ?? "")
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("fontBlue"))
                                                    .padding(.trailing,20)
                                            }
                                            
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                            .padding(.top,5)
                                       
                                        VStack{
                                            HStack{
                                                HStack{
                                                    Image("time")
                                                        .scaledToFit()
                                                    Text("Date & time")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.leading,10)
                                                
                                                Spacer()
                                                Text(serviceManager.createdOrderData?.scheduled?.time ?? "" + " " +
                                                     AppUtil.getDateOnly(format: "", dateValue: serviceManager.createdOrderData?.scheduled?.date ?? ""))
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("fontBlue"))
                                                    .padding(.trailing,20)
                                            }
                                            
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                            .padding(.top,5)
                                      
                                        VStack{
                                            HStack{
                                                HStack{
                                                    Image("address")
                                                        .scaledToFit()
                                                    Text("Address")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.leading,10)
                                                
                                                Spacer()
                                                Text(serviceManager.createdOrderData?.address ?? "")
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("fontBlue"))
                                                    .padding(.trailing,20)
                                            }
                                            
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                            .padding(.top,5)
                                        
                                        VStack{
                                            HStack{
                                                HStack{
                                                    Image("security")
                                                        .scaledToFit()
                                                    Text("Guaranty")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.leading,10)
                                                
                                                Spacer()
                                                Text("7 Day")
                                                    .font(.system(size: 14))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("fontBlue"))
                                                    .padding(.trailing,20)
                                            }
                                            
                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                      .frame(height: 1)
                                                      .foregroundColor(Color("B2C1E3"))
                                        }.padding(.horizontal)
                                            .padding(.top,5)
                                        
//                                        VStack{
//                                            HStack{
//                                                HStack{
//                                                    Image("calendar_month")
//                                                        .scaledToFit()
//                                                    Text("Appointment")
//                                                        .font(.system(size: 14))
//                                                        .fontWeight(.regular)
//                                                        .foregroundColor(Color("B2C1E3"))
//                                                }.padding(.leading,10)
//
//                                                Spacer()
//                                                Text("6/6/2022, 05:30 PM")
//                                                    .font(.system(size: 14))
//                                                    .fontWeight(.regular)
//                                                    .foregroundColor(Color("fontBlue"))
//                                                    .padding(.trailing,20)
//                                            }
//
//                                            Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
//                                                      .frame(height: 1)
//                                                      .foregroundColor(Color("B2C1E3"))
//                                        }.padding(.horizontal)
//                                            .padding(.top,5)
                                        
//                                        VStack{
//                                            HStack{
//                                                HStack{
//                                                    Image("User")
//                                                        .scaledToFit()
//                                                    Text("Technician name")
//                                                        .font(.system(size: 14))
//                                                        .fontWeight(.regular)
//                                                        .foregroundColor(Color("B2C1E3"))
//                                                }.padding(.leading,10)
//
//                                                Spacer()
//                                                Text("Mohaned Mostifa")
//                                                    .font(.system(size: 14))
//                                                    .fontWeight(.regular)
//                                                    .foregroundColor(Color("fontBlue"))
//                                                    .padding(.trailing,20)
//                                            }
//
//
//                                        }.padding(.horizontal)
//                                            .padding(.top,5)
                                       
                                    }
                                )
                            
                        }.frame(width: UIScreen.main.bounds.width - 50, height: 400, alignment: .center)
                     
                        if !waitingForTech {
                            VStack{
                                HStack{
                                    Text("Technicians")
                                        .font(.system(size: 18))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("fontBlue"))
                                    
                                    Spacer()
                                    
                                   
                                }.padding(.horizontal)
                                
                                VStack{
                                    ForEach(0 ..< 5, id:\.self) { _ in
                                        TechnicianCard()
                                            .onTapGesture{
                                                viewRouter.currentPage = "TechnicianDetail"
                                            }
                                    }
                                }
                            }
                        }
                        else{
                            VStack{
                                HStack{
                                    Text("Waiting for technicians to accept the Order.")
                                        .foregroundColor(Color("fontBlue"))
                                        .font(.system(size: 20))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.center)
                                       
                                        
                       
                                }.padding(.horizontal)
                                
                                Image("Group 984")
                                    .scaledToFit()
                                
                                CustomButton(title: "Order Screen", callback: {
                                    viewRouter.currentPage = "OrderScreen"
                                })

                                
                            }.frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.vertical)
                        }
                       
                        if orderAccepted {
                            ZStack{
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(Color("White"))
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color("B2C1E3"),lineWidth: 1)
                                    .overlay(
                                        VStack{
                                            Group{
                                                VStack{
                                                    HStack{
                                                        Text("Tax No.")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("12345678")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Technician Fare")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("150 SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Technician Fare")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("150 SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                            }
                                          
                                            Group {
                                                VStack{
                                                    HStack{
                                                        Text("Spare parts")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("500 SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Spare parts")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("500 SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Spare parts delivery")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("500 SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Total")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("500 SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Discount")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("120 SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Tax Value")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("120 SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Balance")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("B2C1E3"))
                                                        
                                                        Spacer()
                                                        
                                                        Text("SAR")
                                                            .font(.system(size: 14))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color("fontBlue"))
                                                            
                                                        
                                                    }
                                                }.padding(.horizontal)
                                                    .padding(.top)
                                            }
                                          
                                            VStack{
                                                HStack{
                                                    Text("Total required payment")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("fontBlue"))
                                                        .padding(.vertical)
                                                        .padding(.leading)

                                                    Spacer()

                                                    Text("500 SAR")
                                                        .font(.system(size: 14))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("fontBlue"))
                                                        .padding(.trailing)


                                                }
                                            }.background(Color("fontBlue")
                                                            .opacity(0.3))
                                               
                                                .padding(.top)
                                           
                                        }
                                    )
                                
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 500, alignment: .center)
                                .padding(.top)
                        }
                        
                      
//                        VStack{
//
//                            OrderButton(title: "Pay (720 SAR)", callback: {
//                                viewRouter.currentPage = "CompleteOrderScreen"
//                            }).padding(.vertical)
//                        }
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                customerApi.getAvailableTechs(orderId: serviceManager.selectedOrder?._id ?? "", success: { res in
                    waitingForTech = false
                   // technicians = res
                }, failure: { _ in
                    
                })
            }
        
    }
}

struct OrderDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailScreen()
    }
}

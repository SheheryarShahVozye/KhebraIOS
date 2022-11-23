//
//  TrackingOrderScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct TrackingOrderScreen: View {
    @EnvironmentObject var serviceManager: ServiceManager
    @EnvironmentObject var viewRouter: ViewRouter
    @State var technicians: [TechnicianProfile] = []
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Tracking Order")
                ScrollView{
                    VStack{
                        //             ZStack{
                        
                        //                            RoundedRectangle(cornerRadius: 5)
                        //                                .foregroundColor(Color("White"))
                        //
                        //                            RoundedRectangle(cornerRadius: 5)
                        //                                .stroke(Color("B2C1E3"),lineWidth: 1)
                        //                                .overlay(
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
                                    Text("#58256")
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("fontBlue"))
                                        .padding(.trailing,20)
                                }
                                
                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                    .frame(height: 1)
                                    .foregroundColor(Color("B2C1E3"))
                            }
                            .padding(10)
                            
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
                                    Text(serviceManager.selectedOrder?.status ?? "")
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("046006"))
                                        .padding(.trailing,20)
                                }
                                
                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                    .frame(height: 1)
                                    .foregroundColor(Color("B2C1E3"))
                            }
                            .padding(10)
                            
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
                                    Text(serviceManager.selectedOrder?.serviceName ?? "")
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("fontBlue"))
                                        .padding(.trailing,20)
                                }
                                
                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                    .frame(height: 1)
                                    .foregroundColor(Color("B2C1E3"))
                            }
                            .padding(10)
                            
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
                                    
                                    Text(AppUtil.getDateOnly(format: "", dateValue: serviceManager.selectedOrder?.scheduled?.date ?? "")
                                         +  ", " +
                                         (serviceManager.selectedOrder?.scheduled?.time ?? ""))
                                    
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("fontBlue"))
                                    .padding(.trailing,20)
                                }
                                
                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                    .frame(height: 1)
                                    .foregroundColor(Color("B2C1E3"))
                            }
                            .padding(10)
                            
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
                                    Text(serviceManager.selectedOrder?.address ?? "")
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("fontBlue"))
                                        .padding(.trailing,20)
                                }
                                
                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                    .frame(height: 1)
                                    .foregroundColor(Color("B2C1E3"))
                            }
                            .padding(10)
                            
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
                            }
                            .padding(10)
                            
                            VStack{
                                HStack{
                                    HStack{
                                        Image("calendar_month")
                                            .scaledToFit()
                                        Text("Appointment")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("B2C1E3"))
                                    }.padding(.leading,10)
                                    
                                    Spacer()
                                    Text("6/6/2022, 05:30 PM")
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("fontBlue"))
                                        .padding(.trailing,20)
                                }
                                
                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                    .frame(height: 1)
                                    .foregroundColor(Color("B2C1E3"))
                            }
                            .padding(10)
                            
                            VStack{
                                HStack{
                                    HStack{
                                        Image("User")
                                            .scaledToFit()
                                        Text("Technician name")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("B2C1E3"))
                                    }.padding(.leading,10)
                                    
                                    Spacer()
                                    Text("Mohaned Mostifa")
                                        .font(.system(size: 14))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("fontBlue"))
                                        .padding(.trailing,20)
                                }
                                
                                
                            }
                            .padding(10)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .background(Color("White"))
                        .border(Color("B2C1E3"))
                        
                        // )
                        
                        //  }.frame(width: UIScreen.main.bounds.width - 50, height: 400, alignment: .center)
                        
                        
                    
                    
                        if serviceManager.selectedOrder?.assigned == true && serviceManager.selectedOrder?.invoice == nil  {
                            VStack{
                                HStack{
                                    Text("Tracking Order")
                                        .foregroundColor(Color("fontBlue"))
                                        .fontWeight(.bold)
                                        .font(.system(size: 18))
                                    Spacer()
                                }.padding(.horizontal,25)
                                VStack{
                                    VStack{
                                        HStack {
                                            VStack{
                                                ZStack{
                                                    Circle()
                                                        .foregroundColor(Color("White"))
                                                    
                                                    Circle()
                                                        .stroke(Color("buttonbg"),lineWidth: 2)
                                                        .overlay(
                                                            Image("recievedOrder")
                                                                .scaledToFit())
                                                }.frame(width: 29, height: 29, alignment: .center)
                                                DottedLine()
                                                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [3]))
                                                    .frame(width: 1, height: 50)
                                                    .foregroundColor(Color("buttonbg"))
                                                    .offset(y:-5)
                                                
                                                Spacer()
                                            }
                                            
                                            
                                            VStack{
                                                HStack{
                                                    Text("The technician received the order")
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("5A5A5A"))
                                                    Spacer()
                                                }
                                                HStack{
                                                    Image("time")
                                                        .scaledToFit()
                                                    Text(AppUtil.getDateOnly(format: "", dateValue: serviceManager.selectedOrder?.scheduled?.date ?? "") )
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("B2C1E3"))
                                                    Text(serviceManager.selectedOrder?.scheduled?.time ?? "")
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("B2C1E3"))
                                                    
                                                    Spacer()
                                                }
                                                
                                                Spacer()
                                            }
                                            
                                            Spacer()
                                        }
                                        
                                        
                                        
                                        
                                    }.padding(.leading)
                                  
                                    VStack{
                                        HStack {
                                            VStack{
                                                ZStack{
                                                    Circle()
                                                        .foregroundColor(Color("White"))
                                                    
                                                    Circle()
                                                        .stroke(Color(serviceManager.selectedOrder?.technicianStatus?.order != "received" ? "buttonbg" : "B2C1E3"),lineWidth: 2)
                                                        .overlay(
                                                            
                                                            Image(serviceManager.selectedOrder?.technicianStatus?.order != "received" ? "yellowtruck" : "bluetruck")
                                                                .scaledToFit())
                                                }.frame(width: 29, height: 29, alignment: .center)
                                                DottedLine()
                                                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [3]))
                                                    .frame(width: 1, height: 50)
                                                    .foregroundColor(Color(serviceManager.selectedOrder?.technicianStatus?.order != "received" ? "buttonbg" : "B2C1E3"))
                                                    .offset(y:-5)
                                                
                                                Spacer()
                                            }
                                            
                                            
                                            VStack{
                                                HStack{
                                                    Text("In the way")
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("5A5A5A"))
                                                    Spacer()
                                                }
                                                HStack{
                                                    Image("time")
                                                        .scaledToFit()
                                                    Text(AppUtil.getDateOnly(format: "", dateValue: serviceManager.selectedOrder?.technicianStatus?.timing?.date ?? ""))
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("B2C1E3"))
                                                    Text( serviceManager.selectedOrder?.technicianStatus?.timing?.time ?? "")
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("B2C1E3"))
                                                    Spacer()
                                                }
                                                
                                                Spacer()
                                            }
                                            
                                            Spacer()
                                        }
                                        
                                        
                                        
                                        
                                    }.padding(.leading)
                                        .offset(y:-10)
                                   
                                
                                    VStack{
                                        HStack {
                                            VStack{
                                                ZStack{
                                                    Circle()
                                                        .foregroundColor(Color("White"))
                                                    
                                                    Circle()
                                                        .stroke(Color(serviceManager.selectedOrder?.technicianStatus?.order == "arrived" ? "buttonbg" : "B2C1E3"),lineWidth: 2)
                                                        .overlay(
                                                            Image(serviceManager.selectedOrder?.technicianStatus?.order == "arrived" ? "arrived" : "arrivedblue")
                                                                .scaledToFit())
                                                }.frame(width: 29, height: 29, alignment: .center)
                                                
                                                
                                                Spacer()
                                            }
                                            
                                            
                                            VStack{
                                                HStack{
                                                    Text("Arrived")
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("5A5A5A"))
                                                    Spacer()
                                                }
                                                HStack{
                                                    Image("time")
                                                        .scaledToFit()
                                                    
                                                    
                                                    Text(AppUtil.getDateOnly(format: "", dateValue: serviceManager.selectedOrder?.technicianStatus?.timing?.date ?? ""))
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("B2C1E3"))
                                                    Text( serviceManager.selectedOrder?.technicianStatus?.timing?.time ?? "")
                                                        .font(.system(size: 14))
                                                        .foregroundColor(Color("B2C1E3"))
                                                    Spacer()
                                                }
                                                Spacer()
                                            }
                                            
                                            Spacer()
                                        }
                                        
                                    }.padding(.leading).offset(y:-20)
                                  
                                }
                                
                            }.padding(.top)
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(Color("White"))
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color("buttonbg"),lineWidth: 1)
                                    .overlay(
                                        HStack{
                                            Image("yellowphone")
                                                .scaledToFit()
                                            
                                            Text("Contact the technician")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color("buttonbg"))
                                                .fontWeight(.regular)
                                            
                                            
                                            
                                        }.padding(.horizontal)
                                    )
                                
                            }.frame(width: 240, height: 55, alignment: .center)
                        }
                       
                       
                        if serviceManager.selectedOrder?.invoice != nil {
                            
                            
                            VStack{
                                Group{
                                    VStack{
                                        HStack{
                                            Text("Tax No.")
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("B2C1E3"))
                                            
                                            Spacer()
                                            
                                            Text(String(serviceManager.selectedOrder?.invoice?.taxNumber ?? 0))
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("fontBlue"))
                                            
                                            
                                        }
                                        
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                            .frame(height: 1)
                                            .foregroundColor(Color("B2C1E3"))
                                        
                                    }.padding(.horizontal)
                                        .padding(.top)
                                    
                                    VStack{
                                        HStack{
                                            Text("Technician Fare")
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("B2C1E3"))
                                            
                                            Spacer()
                                            
                                            Text(String(serviceManager.selectedOrder?.invoice?.technicianFare ?? 0) +  " SAR")
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("fontBlue"))
                                            
                                            
                                        }
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                            .frame(height: 1)
                                            .foregroundColor(Color("B2C1E3"))
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
                                            
                                            Text(String(serviceManager.selectedOrder?.invoice?.spareParts ?? 0) + " SAR")
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("fontBlue"))
                                            
                                            
                                        }
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                            .frame(height: 1)
                                            .foregroundColor(Color("B2C1E3"))
                                    }.padding(.horizontal)
                                        .padding(.top)
                                    
                                    
                                    
                                    VStack{
                                        HStack{
                                            Text("Spare parts delivery")
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("B2C1E3"))
                                            
                                            Spacer()
                                            
                                            Text(String(serviceManager.selectedOrder?.invoice?.sparePartDelivery ?? 0) + " SAR")
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("fontBlue"))
                                            
                                            
                                        }
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                            .frame(height: 1)
                                            .foregroundColor(Color("B2C1E3"))
                                    }.padding(.horizontal)
                                        .padding(.top)
                                    
                                    VStack{
                                        HStack{
                                            Text("Total")
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("B2C1E3"))
                                            
                                            Spacer()
                                            
                                            Text(String(serviceManager.selectedOrder?.invoice?.totalPrice ?? 0) + " SAR")
                                                .font(.system(size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color("fontBlue"))
                                            
                                            
                                        }
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                            .frame(height: 1)
                                            .foregroundColor(Color("B2C1E3"))
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
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                            .frame(height: 1)
                                            .foregroundColor(Color("B2C1E3"))
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
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                            .frame(height: 1)
                                            .foregroundColor(Color("B2C1E3"))
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
                                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                            .frame(height: 1)
                                            .foregroundColor(Color("B2C1E3"))
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
                                        
                                        Text(String(serviceManager.selectedOrder?.invoice?.totalPrice ?? 0) + " SAR")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("fontBlue"))
                                            .padding(.trailing)
                                        
                                        
                                    }
                                    
                                }.background(Color("fontBlue")
                                    .opacity(0.3))
                                
                                .padding(.top)
                                
                               
                                
                            }
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .background(Color("White"))
                            .border(Color("B2C1E3"))
                            
                          
                            if (serviceManager.selectedOrder?.isPaid ?? false) == false {
                                if serviceManager.selectedOrder?.approve == true {
                                    CustomButton(title: "Pay", callback: {
                                        viewRouter.currentPage = "PaymentScreen"
                                    })
                                    
                                    
                                }
                                else
                                {
                                    HStack{
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 0)
                                                .foregroundColor(Color("White"))
                                            RoundedRectangle(cornerRadius: 0)
                                                .stroke(Color("buttonbg"),lineWidth: 1)
                                                .overlay(
                                                    HStack{
                                                        
                                                        
                                                        Text("Reject")
                                                            .font(.system(size: 16))
                                                            .foregroundColor(Color("buttonbg"))
                                                    }
                                                )
                                            
                                        }.frame(width: 120, height: 50, alignment: .center)
                                            .onTapGesture {
                                                customerApi.approverejctInvoice(orderId: serviceManager.selectedOrder?._id ?? "",status: "reject", success: { _ in
                                                    viewRouter.goBack()
                                                }, failure: { _ in
                                                    
                                                })
                                            }
                                        
                                        RoundedRectangle(cornerRadius: 2)
                                            .foregroundColor(Color("buttonbg"))
                                            .frame(width: 120, height: 50, alignment: .center)
                                            .overlay(
                                                Text("Accept")
                                                    .font(.system(size: 16))
                                                    .foregroundColor(Color("White"))
                                                    .fontWeight(.semibold)
                                            ).onTapGesture {
                                                customerApi.approverejctInvoice(orderId: serviceManager.selectedOrder?._id ?? "",status: "approve", success: { _ in
                                                    viewRouter.goBack()
                                                }, failure: { _ in
                                                    
                                                })
                                            }
                                    }
                                    .padding(.vertical,30)
                                }
                            }
                            
                            
                        }
                        
                        if serviceManager.selectedOrder?.status == "processing" && serviceManager.selectedOrder?.assigned == false {
                            VStack{
                                HStack{
                                    Text("Technicians")
                                        .font(.system(size: 18))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("fontBlue"))
                                    
                                    Spacer()
                                    
                                    
                                }.padding(.horizontal)
                                
                                VStack{
                                    ForEach(0 ..< technicians.count, id:\.self) { ind in
                                        TechnicianCard(techName: technicians[ind].name ?? "" , rating: String(technicians[ind].rating ?? 0),
                                                       fullfiledOrders: String(technicians[ind].fullFilledOrders ?? 0))                                            .onTapGesture{
                                            serviceManager.selectedTechnician = technicians[ind]
                                            viewRouter.currentPage = "TechnicianDetail"
                                        }
                                    }
                                }
                            }
                        }
                        
                        
                    }.padding(.top)
                }
                
                BottomNavigation()
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                if serviceManager.selectedOrder?.status == "processing" {
                    customerApi.getAvailableTechs(orderId: serviceManager.selectedOrder?._id ?? "", success: { res in
                        technicians = res
                    }, failure: { _ in
                        
                    })
                }
                
            }
    }
}

struct TrackingOrderScreen_Previews: PreviewProvider {
    static var previews: some View {
        TrackingOrderScreen()
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct DottedLine: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        return path
    }
}

struct TestDottedLineView: View {
    var body: some View {
        DottedLine()
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
            .frame(width: 1, height: 100)
            .foregroundColor(Color.red)
    }
}

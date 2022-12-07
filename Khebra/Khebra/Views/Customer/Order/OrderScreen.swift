//
//  OrderScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct OrderScreen: View {
    @State var selected: String = "Current"
    @State var textcolorNon: String = "B2C1E3"
    @State var selectedId: String = ""
    @State var waitingOrders: [OrderObjectElement] = []
    @State var cancelledOrders: [OrderObjectElement] = []
    @State var ordersList: [OrderObjectElement] = []
    @State var completedOrders: [OrderObjectElement] = []
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var serviceManager: ServiceManager
    @State var showPreloader: Bool = false
    @State var showPostponement: Bool = false
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "My Order")
                VStack{
                    RoundedRectangle(cornerRadius: 7)
                        .foregroundColor(Color("White"))
                        .frame(width: UIScreen.main.bounds.width - 50, height: 60, alignment: .center)
                        .shadow(radius: 1)
                        .overlay(
                            HStack{
                                Group{
                                    if selected == "Waiting" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                            .overlay(
                                                Text("Waiting")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 12))
                                                    .fontWeight(.regular)
                                                
                                            )
                                    }
                                    else {
                                        Text("Waiting")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 12))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "Waiting"
                                            }
                                    }
                                }.frame(width: 70, height: 50, alignment: .center)
                                Spacer()
                                Group{
                                    if selected == "Current" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                            .overlay(
                                                Text("Current")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 12))
                                                    .fontWeight(.regular)
                                                
                                            )
                                    }
                                    else {
                                        Text("Current")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 12))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "Current"
                                            }
                                    }
                                }.frame(width: 70, height: 50, alignment: .center)
                                
                                
                                
                                Spacer()
                                Group {
                                    if selected == "Completed" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                        
                                            .overlay(
                                                Text("Completed")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 12))
                                                    .fontWeight(.regular)
                                                
                                                
                                            )
                                    } else {
                                        Text("Completed")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 12))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "Completed"
                                            }
                                    }
                                }.frame(width: 70, height: 50, alignment: .center)
                                
                                
                                Spacer()
                                Group {
                                    if selected == "Cancelled" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("fontBlue"))
                                            .overlay(
                                                Text("Cancelled")
                                                    .foregroundColor(Color("White"))
                                                    .font(.system(size: 12))
                                                    .fontWeight(.regular)
                                                
                                            )
                                    } else {
                                        Text("Cancelled")
                                            .foregroundColor(Color(textcolorNon))
                                            .font(.system(size: 12))
                                            .fontWeight(.regular)
                                            .onTapGesture {
                                                selected = "Cancelled"
                                            }
                                        
                                    }
                                }.frame(width: 70, height: 50, alignment: .center)
                                
                                
                                
                            }.padding(.horizontal)
                        ).padding(.vertical,10)
                    ScrollView{
                        
                        if selected == "Waiting" {
                            ForEach(0 ..< waitingOrders.count,id:\.self) { ind in
                                MyOrderCard(orderNumber: String(waitingOrders[ind].orderNumber ?? 0),
                                            status: waitingOrders[ind].status ?? "",
                                            address: waitingOrders[ind].address ?? "",
                                            serviceType: waitingOrders[ind].serviceName ?? "",
                                            callback: {
                                    
                                    
                                })
                                .onTapGesture{
                                    serviceManager.selectedOrder = waitingOrders[ind]
                                    viewRouter.currentPage = "TrackingOrderScreen"
                                }
                            }
                        }
                        
                       else if selected == "Current" {
                            ForEach(0 ..< ordersList.count,id:\.self) { ind in
                                MyOrderCard(orderNumber: String(ordersList[ind].orderNumber ?? 0),
                                            status: ordersList[ind].status ?? "",
                                            address: ordersList[ind].address ?? "",
                                            serviceType: ordersList[ind].serviceName ?? "",
                                            callback: {
                                    selectedId = ordersList[ind]._id ?? ""
                                    showPostponement.toggle()
                                })
                                .onTapGesture{
                                    serviceManager.selectedOrder = ordersList[ind]
                                    viewRouter.currentPage = "TrackingOrderScreen"
                                }
                            }
                        } else if selected == "Completed" {
                            ForEach(0 ..< completedOrders.count,id:\.self) { ind in
                                MyOrderCompletedCard(orderNumber: String(completedOrders[ind].orderNumber ?? 0),
                                                    status: completedOrders[ind].status ?? "",
                                                     address: completedOrders[ind].address ?? "",
                                                     serviceType: completedOrders[ind].serviceName ?? "",
                                                     timeSlot: AppUtil.getDateOnly(format: "", dateValue: completedOrders[ind].scheduled?.date ?? ""))
                                    .onTapGesture{
                                        viewRouter.currentPage = "TrackingOrderScreen"
                                    }
                            }
                        } else {
                            ForEach(0 ..< cancelledOrders.count,id:\.self) { ind in
                                MyOrderCompletedCancelled(orderNumber: String(cancelledOrders[ind].orderNumber ?? 0),
                                                          status: cancelledOrders[ind].status ?? "",
                                                          address: cancelledOrders[ind].address ?? "",
                                                          serviceType: cancelledOrders[ind].serviceName ?? "",
                                                          timeSlot: AppUtil.getDateOnly(format: "", dateValue: cancelledOrders[ind].scheduled?.date ?? ""))
                                .onTapGesture{
                                    viewRouter.currentPage = "TrackingOrderScreen"
                                }
                            }
                        }
                        
                        
                    }.padding(.top)
                    BottomNavigation()
                }
                
            }
            
            if showPostponement {
                VStack {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("B6BAC3"))
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)
                
                VStack{
                    VStack{
                        
                        HStack{
                           Spacer()
                            Text("Order Postponement")
                                .foregroundColor(Color("fontBlue"))
                                .font(.system(size: 17))
                                .fontWeight(.bold)
                                .padding(10)
                            Spacer()
                        }
                        
                       
                        HStack{
                            Text("Select Date & Time")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.light)
                                .padding(.top,5)
                        }
                        
                        
                        HStack{
                            Spacer()
                            VStack{
                                HStack{
                                    Text("Time")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color("fontBlue"))
                                        .fontWeight(.light)
                                        .padding(.top,5)
                                    
                                    Spacer()
                                }
                                HStack{
                                    Spacer()
                                    Image("ondemand")
                                        .scaledToFit()
                                    DatePicker(selection: .constant(Date()),displayedComponents: .hourAndMinute, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                                        .labelsHidden()
                                    
                                    
                                    Spacer()
                                }.padding(.vertical,10)
                                    .padding(.horizontal,10)
                                    .background(Color("White"))
                                    .border(Color("B2C1E3").opacity(0.6))
                            }
                            
                            
                            Group{
                                VStack{
                                    HStack{
                                        Text("Date")
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("fontBlue"))
                                            .fontWeight(.light)
                                            .padding(.top,5)
                                        
                                        Spacer()
                                    }
                                    HStack{
                                        Spacer()
                                        Image("appointment")
                                            .scaledToFit()
                                        DatePicker(selection: .constant(Date()) ,displayedComponents: .date, label: { Text("Date") })
                                            .labelsHidden()
                                        Spacer()
                                    }.padding(.vertical,10)
                                        .padding(.horizontal,10)
                                        .background(Color("White"))
                                        .border(Color("B2C1E3").opacity(0.6))
                                }
                                
                            }.offset(x:-10)
                            
                            Spacer()
                            
                            
                            
                        }.frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .padding(.top,10)
                    
                    
                    
                    
                    OrderButton(title: "Send Request", callback: {
                        customerApi.postponeOrder(selectedId, success: { _ in
                            showPostponement = false
                        }, failure: { _ in
                            
                        })
                    }).padding(.top)
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width - 20,
                        height: 300, alignment: .center)
                    .background(Color("White"))
            }
            /*
            if showPostponement {
                VStack {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("B6BAC3"))
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)
                
                VStack{
                    VStack{
                        HStack{
                           Spacer()
                            Text("Order Postponement")
                                .foregroundColor(Color("fontBlue"))
                                .font(.system(size: 17))
                                .fontWeight(.bold)
                                .padding(10)
                            Spacer()
                        }
                        
                        HStack{
                           
                            Text("Order Postponement")
                                .foregroundColor(Color("fontBlue"))
                                .font(.system(size: 17))
                                .fontWeight(.bold)
                                .padding(10)
                            
                        }
                    }
                  
                }.frame(width: UIScreen.main.bounds.width - 100).background(Color("White"))
                
            }
            */
            if showPreloader {
                VStack {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("B6BAC3"))
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)

                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: Color("buttonbg")))
                    .scaleEffect(x: 4, y: 4, anchor: .center)
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .task {
                showPreloader = true
                customerApi.getCurrentOrders(success: { res in
                    showPreloader = false
                    ordersList = res
                }, failure: { _ in
                    showPreloader = false
                })
                
                customerApi.getProcessingOrders(success: { res in
                    showPreloader = false
                    waitingOrders = res
                }, failure: { _ in
                    showPreloader = false
                })
                
                customerApi.getCompletedOrders(success: { res in
                    showPreloader = false
                    completedOrders = res
                }, failure: { _ in
                    showPreloader = false
                })
                
                customerApi.getCancelledOrders(success: { res in
                    showPreloader = false
                    cancelledOrders = res
                }, failure: { _ in
                    showPreloader = false
                })
            }
    }
}

struct OrderScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrderScreen()
    }
}

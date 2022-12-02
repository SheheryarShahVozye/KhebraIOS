//
//  TechnicianDetail.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct TechnicianDetail: View {
    @EnvironmentObject var serviceManager: ServiceManager
    @EnvironmentObject var viewRouter: ViewRouter
    @State var sentRequestToggle: Bool = true
    var body: some View {
        ZStack{
            
            VStack{
                TopNavigation(titleText:"Technician Details")
                ScrollView{
                    VStack{
                      
                        TechnicianCard(techName: serviceManager.selectedTechnician?.name ?? "" ,
                                       rating: String(serviceManager.selectedTechnician?.rating ?? 0),
                                       fullfiledOrders: String(serviceManager.selectedTechnician?.fullFilledOrders ?? 0))
                        .onTapGesture {
                            sentRequestToggle = true
                            customerApi.requetToTech(orderId: serviceManager.selectedOrder?._id ?? "", techId: serviceManager.selectedTechnician?._id ?? "", success: { _ in
                                sentRequestToggle = false
                                viewRouter.goBack()
                            }, failure: { _ in
                                
                            })
                        }
                        
                        VStack{
                            HStack{
                                VStack {
                                    Image("blueStar")
                                        .scaledToFit()
                                    Spacer()
                                }
                                VStack{
                                    HStack {
                                        Text("No. of positive reviews")
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
                       
                        VStack{
                            
                            PerformanceBar(title: "Work Perfiction", value: "50")
                            
                            PerformanceBar(title: "Arrival time", value: "50")
                            
                            PerformanceBar(title: "Performance Speed", value: "50")
                            
                            PerformanceBar(title: "Good behavior & manners", value: "50")
                            
                            PerformanceBar(title: "The appearance", value: "50")

                        }
                        
                        VStack{
                            HStack{
                                VStack {
                                    Image("blueStar")
                                        .scaledToFit()
                                    Spacer()
                                }
                                VStack{
                                    HStack {
                                        Text("Customer Reviews")
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
                        
                     //   ScrollView{
                            ForEach(0 ..< 6,id:\.self) { _ in
                                CustomerReviewCard()
                            }
                     //   }
                        
                    }
                }
                BottomNavigation()
            }
          
            if sentRequestToggle {
                VStack{
                    
                    VStack{
                        Text("Request Sent")
                            .foregroundColor(Color("fontBlue"))
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .padding(.top)
                      
                        Text("The request has been sent to the technician. Please wait for the technician to accept the order.")
                            .foregroundColor(Color("fontBlue"))
                            .font(.system(size: 13))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,20)
                            .padding(5)
                            .padding(.bottom,10)
                        
                        
                    }
                    
                }.background(Color("White"))
                    .border(Color("fontBlue"))
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct TechnicianDetail_Previews: PreviewProvider {
    static var previews: some View {
        TechnicianDetail()
    }
}




struct PerformanceBar: View {
    var title: String = "Performance Speed"
    var value: String = "50"
    var body: some View {
        HStack{
            Text(title)
                .font(.system(size: 14))
                .foregroundColor(Color("black"))
             Spacer()
            
            ProgressView("", value: Float(value), total: 100)
                .tint(Color("buttonbg"))
                .padding(.bottom)
                .frame(width: 220)
            Text(value)
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(Color("buttonbg"))
           
            
        }.padding(.horizontal)
           
        
    }
}

//
//  OrderCancelScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct OrderCancelScreen: View {
    @State var techLate: Bool = false
    @State var reqCancel: Bool = false
    @State var notprof: Bool = false
    @State var pricehigh: Bool = false
    @State var anotherreason: Bool = false
    @State var details: String = ""
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var serviceManager: ServiceManager
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Confirm order cancellation")
                ScrollView{
                    Image("ordercancel")
                        .scaledToFit()
                        .padding(.vertical)

                    VStack{
                        HStack{
                            Text("Sorry, and please give us the reason")
                                .font(.system(size: 16))
                                .foregroundColor(Color("black"))
                            Spacer()
                        }.padding(.horizontal,20)
                            .padding(.top,5)
                       
                        CancellationTypes(checkMark: $techLate, description: "The technician is late")
                        CancellationTypes(checkMark: $reqCancel, description: "Technician request cancellation")
                        CancellationTypes(checkMark: $notprof, description: "The technician is not a professional")
                        CancellationTypes(checkMark: $pricehigh, description: "The price is high")
                        CancellationTypes(checkMark: $anotherreason, description: "Another reason, please write it down")
                        
                        
                        VStack{
                            HStack{
                                Text("Comment")
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
                        
                       
                        
                    }.padding(.vertical)
                    
                    RoundedRectangle(cornerRadius: 2)
                         .foregroundColor(Color("buttonbg"))
                         .frame(width: 250, height: 50, alignment: .center)
                         .overlay(
                                     Text("Confirm order cancellation")
                                         .font(.system(size: 16))
                                         .foregroundColor(Color("White"))
                                         .fontWeight(.semibold)
                         ).onTapGesture {
                            var object =  cancelationPostbody()
                             object.moreDetail = details
                             if techLate {
                                 object.reason = cancelationTypes.techLate
                             }
                             if reqCancel {
                                 object.reason = cancelationTypes.requestCancelation
                             }
                             
                             if notprof {
                                 object.reason = cancelationTypes.technotprofesional
                             }
                             
                             if pricehigh {
                                 object.reason = cancelationTypes.priceHigh
                             }
                             
                             if anotherreason {
                                 object.reason = cancelationTypes.anothereason
                             }
                             
                             customerApi.cancelOrders(serviceManager.selectedOrder?._id ?? "", object, success: { _ in
                                 viewRouter.currentPage = "DashboardScreen"
                             }, failure: { _ in
                                 viewRouter.currentPage = "DashboardScreen"
                             })
                             
                         }.padding(.vertical)
                }
              //  BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct OrderCancelScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrderCancelScreen()
    }
}

struct CancellationTypes: View {
    @Binding var checkMark: Bool
    var description: String = "The technician is late"
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 3)
                    .foregroundColor(Color("White"))
                
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color("B2C1E3"),lineWidth: 1)
            
                if checkMark {
                    Image("Icon color")
                       
                } else {
                    Image("Icon color")
                        .opacity(0)
                    
                }
               
                
            }.frame(width: 27, height: 24, alignment: .center)
                .onTapGesture {
                    checkMark.toggle()
                }
          
            Text(description)
                .font(.system(size: 16))
                .foregroundColor(Color("5A5A5A"))
            
            Spacer()
        }.padding(.horizontal,20)
    }
}

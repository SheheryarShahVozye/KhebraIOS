//
//  Rating.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct RatingScreen: View {
    @State var comments: String = ""
    @State var Perfectcheck: Bool = false
    @State var Clumsycheck: Bool = false
    @State var ArrivalCheck: Bool = false
    @State var latearrivalcheck: Bool = false
    @State var Fastcheck: Bool = false
    @State var Slowcheck: Bool = false
    @State var Mannerscheck: Bool = false
    @State var BadMannerscheck: Bool = false
    @State var WelllookCheck: Bool = false
    @State var BadLookingCheck: Bool = false
    @State var showPreloader: Bool = false
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var serviceManager: ServiceManager
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Rating")
                ScrollView{
                    VStack{
                        HStack{
                            Text("Work Perefection")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: $Perfectcheck, description: "Perfect")
                                .onTapGesture {
                                    Perfectcheck.toggle()
                                    Clumsycheck = false
                                }
                            CancellationTypes(checkMark: $Clumsycheck, description: "Clumsy")
                                .onTapGesture {
                                    Perfectcheck = false
                                    Clumsycheck.toggle()
                                }
                            
                            Spacer()
                        }
                        
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("Arrival time")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: $ArrivalCheck, description: "Arrival time")
                                .onTapGesture {
                                    latearrivalcheck = false
                                    ArrivalCheck.toggle()
                                }
                            CancellationTypes(checkMark: $latearrivalcheck, description: "late arrival")
                                .onTapGesture {
                                    ArrivalCheck = false
                                    latearrivalcheck.toggle()
                                }
                            
                            Spacer()
                        }
                        
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("Performance Speed")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: $Fastcheck, description: "Fast")
                                .onTapGesture {
                                    Slowcheck = false
                                    Fastcheck.toggle()
                                }
                            CancellationTypes(checkMark: $Slowcheck, description: "Slow")
                                .onTapGesture {
                                    Fastcheck = false
                                    Slowcheck.toggle()
                                }
                            
                            Spacer()
                        }
                        
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("Good Behavior And Manners")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: $Mannerscheck, description: "Manners")
                                .onTapGesture {
                                    BadMannerscheck = false
                                    Mannerscheck.toggle()
                                }
                            CancellationTypes(checkMark: $BadMannerscheck, description: "Bad Manners")
                                .onTapGesture {
                                    Mannerscheck = false
                                    BadMannerscheck.toggle()
                                }
                            
                            Spacer()
                        }
                        
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("The Appearance")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            CancellationTypes(checkMark: $WelllookCheck, description: "Well look")
                                .onTapGesture {
                                    BadLookingCheck = false
                                    WelllookCheck.toggle()
                                }
                            CancellationTypes(checkMark: $BadLookingCheck, description: "Bad Looking")
                                .onTapGesture {
                                    WelllookCheck = false
                                    BadLookingCheck.toggle()
                                }
                            
                            Spacer()
                        }
                        
                        
                        
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    VStack{
                        HStack{
                            Text("Comment")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 110, alignment: .center)
                            .foregroundColor(Color("White"))
                            .overlay(
                                TextEditor(text: $comments)
                                    .padding(.leading)
                                
                            )
                    }.padding(.horizontal)
                        .padding(.vertical)
                    
                    CustomButton(title: "Send", callback: {
                        showPreloader = true
                        let obj = RatingObject()
                        if Perfectcheck {
                            obj.workPerfection = "Perfect"
                        } else {
                            obj.workPerfection = "Clumsy"
                        }
                        
                        if Fastcheck {
                            obj.performanceSpeed = "Fast Speed"
                        } else {
                            obj.performanceSpeed = "Well Speed"
                        }
                        
                        if Mannerscheck {
                            obj.behaviorManner =  "Well Mannered"
                        } else {
                            obj.behaviorManner =  "Bad Mannered"
                        }
                        
                        if WelllookCheck {
                            obj.appearance = "Decent"
                        } else {
                            obj.appearance = "Bad"
                        }
                        
                        obj.comment = comments
                        
                        customerApi.createRating(serviceManager.selectedOrder?._id ?? "", technicianiD: serviceManager.selectedOrder?.assignedTo?._id ?? "", body: obj, success: { _ in
                            showPreloader = false
                            viewRouter.currentPage = "DashboardScreen"
                        }, failure: { f in
                            showPreloader = false
                        })
                        
                    })
                }
            }
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
    }
}

struct RatingScreen_Previews: PreviewProvider {
    static var previews: some View {
        RatingScreen()
    }
}

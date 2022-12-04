//
//  DashboardScreen.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct DashboardScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var serviceManager: ServiceManager
    @ObservedObject var locationSearchService = LocationSearchService()
    @State var showBusinessSector: Bool = false
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack{
                    HStack{
                       Image("profileImage")
                            .resizable()
                            .frame(width: 36, height: 36, alignment: .center)
                            .clipShape(Circle())
                        VStack{
                            HStack{
                                Text("Hello")
                                    .fontWeight(.regular)
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("B6BAC3"))
                                Spacer()
                            }
                            HStack{
                                
                                Text(AppUtil.user?.name ?? "")
                                    .fontWeight(.bold)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("fontBlue"))
                                Spacer()
                            }
                            
                        }
                        Spacer()
                        Image("darkBell")
                            .scaledToFit()
                            .padding(.trailing)
                            .onTapGesture {
                                viewRouter.currentPage = "NotificationScreen"
                            }
                            
                    }
                }.padding(.horizontal,30)
                    .padding(.vertical,50)
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        
                        Image("coverpic")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width - 50, height: 136, alignment: .center)
                            .scaledToFit()
                            .cornerRadius(2)
                            .padding(.vertical)
                        
                        RoundedRectangle(cornerRadius: 2)
                            .frame(width: 250, height: 50, alignment: .center)
                            .foregroundColor(Color("fontBlue"))
                            .overlay(
                              
                                Text("Business Sector")
                                .foregroundColor(Color("White"))
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                           
                            ).padding(.top)
                            .onTapGesture{
                                
                                showBusinessSector = true
                            }
                        
                        if showBusinessSector {
                            ZStack{
                                RoundedRectangle(cornerRadius: 2)
                                    .foregroundColor(Color("White"))
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 150, alignment: .center)
                                    
                                RoundedRectangle(cornerRadius: 2)
                                    .stroke(Color("fontBlue"),lineWidth: 1)
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 150, alignment: .center)
                                    .overlay(
                                        
                                        HStack{
                                            Spacer()
                                            VStack{
                                                Circle()
                                                    .foregroundColor(Color("fontBlue"))
                                                    .frame(width: 80,height:79,alignment: .center)
                                                    .overlay(
                                                        Image("maitainance")
                                                    )
                                               
                                                
                                                Text("Maintainance")
                                                    .foregroundColor(Color("fontBlue"))
                                                    .font(.system(size: 16))
                                                    .fontWeight(.regular)
                                                
                                                Spacer()
                                                    
                                            }.onTapGesture {
                                                serviceManager.selectedService = "Maintenance"
                                                viewRouter.currentPage = "BusinessSectorScreen"
                                            }
                                            Spacer()
                                            VStack{
                                                Circle()
                                                    .foregroundColor(Color("fontBlue"))
                                                    .frame(width: 80,height:79,alignment: .center)
                                                    .overlay(
                                                        Image("engineering")
                                                    )
                                                
                                                Text("Engineering Designs")
                                                    .foregroundColor(Color("fontBlue"))
                                                    .font(.system(size: 16))
                                                    .fontWeight(.regular)
                                                    .multilineTextAlignment(.center)
                                                
                                                Spacer()
                                                    
                                            }.onTapGesture {
                                                serviceManager.selectedService = "Engineering Designs"
                                                viewRouter.currentPage = "BusinessSectorScreen"
                                            }
                                            Spacer()
                                            VStack{
                                                Circle()
                                                    .foregroundColor(Color("fontBlue"))
                                                    .frame(width: 80,height:79,alignment: .center)
                                                    .overlay(
                                                        Image("construction")
                                                    )
                                               
                                                
                                                Text("Engineering Construction")
                                                    .foregroundColor(Color("fontBlue"))
                                                    .font(.system(size: 16))
                                                    .fontWeight(.regular)
                                                
                                                Spacer()
                                                
                                                    
                                            }.onTapGesture {
                                                serviceManager.selectedService = "Engineering Construction"
                                                viewRouter.currentPage = "BusinessSectorScreen"
                                            }
                                            Spacer()
                                          
                                        }
                                            .padding(.top,10)
                                    )
                                
                                VStack{
                                    HStack{
                                        Circle()
                                            .frame(width: 35,height: 35,alignment: .center)
                                            .foregroundColor(Color("White"))
                                            .overlay(
                                                Image("xmarkBlue")
                                            )
                                        Spacer()
                                    }.offset(x:-10,y:-10)
                                        .onTapGesture {
                                            showBusinessSector = false
                                        }
                                    Spacer()
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 150, alignment: .center)

                        }
                       
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 2)
                                .foregroundColor(Color("White"))
                         
                            RoundedRectangle(cornerRadius: 2)
                                .stroke(Color("137D3B"),lineWidth: 0.5)
                                .overlay(
                                    HStack{
                                        Text("You can request the service via WhatsApp")
                                            .font(.system(size: 14))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("137D3B"))
                                            .padding(.leading)
                                            .multilineTextAlignment(.leading)
                                           
                                        
                                        Spacer()
                                        Image("whatsapp")
                                            .scaledToFit()
                                            .padding(.trailing)
                                        
                                    }.padding(.horizontal,5)
                                )
                        
                        }.frame(width: UIScreen.main.bounds.width - 70, height: 64, alignment: .center)
                            .padding(.top)
                        
                        VStack{
                            LazyVGrid(columns: columns, spacing: 15) {
                                ForEach(0 ..< serviceManager.services.count,id:\.self) { val in
                                    DashboardCard(imageName: serviceManager.services[val].url ?? "",
                                                  serviceName: serviceManager.services[val].service ?? "")
                                        .onTapGesture {
                                            serviceManager.selectedServiceId = serviceManager.services[val]
                                           // viewRouter.currentPage = "ChooseOnMapScreen"
                                            viewRouter.currentPage = "LocationScreen"
                                        }
                                }
                            }.frame(width: UIScreen.main.bounds.width - 50)
                        }.padding(.top,20)
                       
                        
                    }
                    
                }
              BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .onAppear(perform: {
                
                if AppUtil.user != nil
                {
                    customerApi.getServices(success: { res in
                        DispatchQueue.main.async {
                            serviceManager.services = res
                        }
                       
                        AppUtil.services = res
                    }, failure: { _ in
                        
                    })
                } else {
                    customerApi.getServices(success: { res in
                        DispatchQueue.main.async {
                            serviceManager.services = res
                            customerApi.getCustomerprofile(success: { res in
                                AppUtil.user = res
                               
                                
                            }, failure: { _ in
                                
                            })
                        }
                       
                        AppUtil.services = res
                    }, failure: { _ in
                        
                    })
                  
                }
                
                customerApi.getBusinessSectors(success: { res in
                    AppUtil.businessCategories = res
                }, failure: { _ in
                    
                })
                
            
               
               
            })
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}

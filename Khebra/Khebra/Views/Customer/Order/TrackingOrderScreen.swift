//
//  TrackingOrderScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct TrackingOrderScreen: View {
    var body: some View {
        ZStack{
            VStack{
              //  TopNavigation(titleText: "Tracking Order")
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
                                            Text("#58256")
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
                                            Text("Active")
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
                                            Text("Plumbing")
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
                                            Text("6/6/2022, 05:30 PM")
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
                                            Text("As Sahafah, Olaya St. 6531, 3059 ...")
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
                                    }.padding(.horizontal)
                                        .padding(.top,5)
                                    
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
                                        
                                       
                                    }.padding(.horizontal)
                                        .padding(.top,5)
                                }
                            )
                        
                    }.frame(width: UIScreen.main.bounds.width - 50, height: 400, alignment: .center)
                    
                    VStack{
                        HStack{
                            Text("Tracking Order")
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.bold)
                                .font(.system(size: 18))
                            Spacer()
                        }.padding(.horizontal,25)
                        VStack{
                            
                        }
                    }.padding(.top)
                  
                }.padding(.top)
               // BottomNavigation()
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
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

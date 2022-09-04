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
               TopNavigation(titleText: "Tracking Order")
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
                                                Text("6/6/2022, 05:30 PM")
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
                                                    .stroke(Color("B2C1E3"),lineWidth: 2)
                                                    .overlay(
                                                        Image("bluetruck")
                                                            .scaledToFit())
                                            }.frame(width: 29, height: 29, alignment: .center)
                                            DottedLine()
                                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [3]))
                                                .frame(width: 1, height: 50)
                                                .foregroundColor(Color("B2C1E3"))
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
                                                Text("6/6/2022, 05:30 PM")
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
                                                    .stroke(Color("B2C1E3"),lineWidth: 2)
                                                    .overlay(
                                                        Image("arrivedblue")
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
                                                    
                                                    
                                                Text("6/6/2022, 05:30 PM")
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
                      
                    }.padding(.top)
                }
               
                BottomNavigation()
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

//
//  TechnicianDetail.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct TechnicianDetail: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Technician Details")
                ScrollView{
                    VStack{
                      
                        TechnicianCard()
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

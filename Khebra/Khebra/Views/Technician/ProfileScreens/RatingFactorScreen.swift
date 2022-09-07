//
//  RatingFactorScreen.swift
//  Khebra
//
//  Created by Sheheryar on 06/09/2022.
//

import SwiftUI

struct RatingFactorScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Rating factors")
                ScrollView{
                    VStack{
                        
                        VStack{
                            HStack{
                                HStack{
                                    Text("Factors")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("fontBlue"))
                                    Spacer()
                                    
                                  
                                    Text("Positive")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("fontBlue"))
                                        .frame(width: 70)
                                       
                                       
                                    
                                    Text("Passive")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("fontBlue"))
                                        .frame(width: 70)
                                        
                                    
                                    
                                }.padding(.horizontal)
                            }
                            Divider().foregroundColor(Color("5A5A5A"))
                        }.padding()
                        
                        VStack{
                            HStack{
                                HStack{
                                    Text("Work perfiction")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                    Spacer()
                                    
                                  
                                    Text("+ 40")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                       
                                    
                                    Text("- 5")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                        
                                    
                                    
                                }.padding(.horizontal)
                            }
                            Divider().foregroundColor(Color("5A5A5A"))
                        }.padding(.horizontal)
                        
                        VStack{
                            HStack{
                                HStack{
                                    Text("Arrival time")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                    Spacer()
                                    
                                  
                                    Text("+ 40")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                       
                                    
                                    Text("- 5")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                        
                                    
                                    
                                }.padding(.horizontal)
                            }
                            Divider().foregroundColor(Color("5A5A5A"))
                        }.padding(.horizontal)
                        
                        VStack{
                            HStack{
                                HStack{
                                    Text("Performance speed")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                    Spacer()
                                    
                                  
                                    Text("+ 40")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                       
                                    
                                    Text("- 5")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                        
                                    
                                    
                                }.padding(.horizontal)
                            }
                            Divider().foregroundColor(Color("5A5A5A"))
                        }.padding(.horizontal)
                        
                        VStack{
                            HStack{
                                HStack{
                                    Text("Dealing with ethics and morals")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                    Spacer()
                                    
                                  
                                    Text("+ 40")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                       
                                    
                                    Text("- 5")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                        
                                    
                                    
                                }.padding(.horizontal)
                            }
                            Divider().foregroundColor(Color("5A5A5A"))
                        }.padding(.horizontal)

                        
                        VStack{
                            HStack{
                                HStack{
                                    Text("The appearance")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                    Spacer()
                                    
                                  
                                    Text("+ 40")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                       
                                    
                                    Text("- 5")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                        
                                    
                                    
                                }.padding(.horizontal)
                            }
                            Divider().foregroundColor(Color("5A5A5A"))
                        }.padding(.horizontal)
                        
                        VStack{
                            HStack{
                                HStack{
                                    Text("Complete the application")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                    Spacer()
                                    
                                  
                                    Text("+ 40")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                       
                                    
                                    Text("- 5")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                        
                                    
                                    
                                }.padding(.horizontal)
                            }
                            Divider().foregroundColor(Color("5A5A5A"))
                        }.padding(.horizontal)
                        
                        VStack{
                            HStack{
                                HStack{
                                    Text("Apply for orders")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                    Spacer()
                                    
                                  
                                    Text("+ 40")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                       
                                    
                                    Text("- 5")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                        .frame(width: 70)
                                        
                                    
                                    
                                }.padding(.horizontal)
                            }
                            Divider().foregroundColor(Color("5A5A5A"))
                        }.padding(.horizontal)

                        
                    }.background(Color("White"))
                        .border(Color("5A5A5A").opacity(0.2))
                        .padding(.horizontal)
                    
                }
                
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct RatingFactorScreen_Previews: PreviewProvider {
    static var previews: some View {
        RatingFactorScreen()
    }
}

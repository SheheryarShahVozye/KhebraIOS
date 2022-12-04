//
//  OrderCancelScreen.swift
//  Khebra
//
//  Created by Sheheryar on 31/08/2022.
//

import SwiftUI

struct OrderCancelScreen: View {
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
                       
                        CancellationTypes(checkMark: .constant(true), description: "The technician is late")
                        CancellationTypes(checkMark: .constant(true), description: "Technician request cancellation")
                        CancellationTypes(checkMark: .constant(true), description: "The technician is not a professional")
                        CancellationTypes(checkMark: .constant(true), description: "The price is high")
                        CancellationTypes(checkMark: .constant(true), description: "Another reason, please write it down")
                        
                        
                       
                        
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
                }
               
                
            }.frame(width: 27, height: 24, alignment: .center)
          
            Text(description)
                .font(.system(size: 16))
                .foregroundColor(Color("5A5A5A"))
            
            Spacer()
        }.padding(.horizontal,20)
    }
}

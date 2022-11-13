//
//  AccountCompletion.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct AccountCompletion: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var name: String = ""
    var body: some View {
        ZStack{
            VStack{
                TopNavigation()
                VStack{
                   
                    Spacer()
                    VStack{
                        HStack{
                            Text("Enter Your Name")
                                .font(.system(size: 16))
                                .foregroundColor(Color("5F5E5E"))
                            
                            Spacer()
                        }
                        
                        CustomTextField(value: $name)
                        
                       
                    }.padding(.horizontal,30)
                    
                    
                    Spacer()
                    CustomButton(title: "Next", callback: {
                        let obj = registerName()
                        obj.name = name
                        
                        let defaults = UserDefaults.standard
                        defaults.set(AppUtil.idToken, forKey: Keys.token)

                        
                        if let token = defaults.value(forKey: Keys.token) as? String {
                            print("defaults Token: \(token)")
                        }
                        
                        
                        customerApi.customerName(obj, success: { _ in
                            viewRouter.currentPage = "DashboardScreen"
                        }, failure: { _ in
                            
                        })
                      
                        
                    })
                    Spacer()
                }
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
    }
}

struct AccountCompletion_Previews: PreviewProvider {
    static var previews: some View {
        AccountCompletion()
    }
}

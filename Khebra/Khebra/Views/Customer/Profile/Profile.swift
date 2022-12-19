//
//  Profile.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI

struct ProfileScreen: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var mobileNo: String = ""
    @State var address: String = ""
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Profile")
                ScrollView{
                    VStack{
                        VStack{
                            HStack{
                                Image("User")
                                    .scaledToFit()
                                Text("Name")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: $name, placeHolder: "Name")
                        }.padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("Mail")
                                    .scaledToFit()
                                Text("Email")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: $email, placeHolder: "Email")
                        }.padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("mobileNo")
                                    .scaledToFit()
                                Text("Mobile No.")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: $mobileNo, placeHolder: "Mobile No")
                        }.padding(.top,5)
                        
                        VStack{
                            HStack{
                                Image("address")
                                    .scaledToFit()
                                Text("Address")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("5F5E5E"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: $address, placeHolder: "Enter your Address")
                        }.padding(.top,5)
                        
                        
                        
                        HStack{
                            Image("bellIcon")
                                .scaledToFit()
                            Text("Notifications and offers")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(Color("5F5E5E"))
                            
                            Spacer()
                            Toggle(isOn: .constant(false)) {
                                
                            }   .labelsHidden()
                                .tint(Color("buttonbg"))
                            
                            
                        }.padding(.horizontal,30)
                            .padding(.top)
                        
                        HStack{
                            Image("language")
                                .scaledToFit()
                            Text("Language")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(Color("5F5E5E"))
                            
                            Spacer()
                            Text("EN")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(Color("B2C1E3"))
                            
                            
                        }.padding(.horizontal,30)
                            .padding(.top)
                        
                        CustomButton(title: "Save", callback: {
                            let customerprofile = ProfilePostBody()
                            customerprofile.address = address
                            customerprofile.name = name
                            customerprofile.email = email
                            customerprofile.phone = mobileNo
                            
                            customerApi.updateCustomerprofle(customerprofile, success: { res in
                                AppUtil.user = res
                                viewRouter.goBack()
                            }, failure: { _ in
                                
                            })
                        }).padding(.vertical)
                        
                    }
                    
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .keyboardAdaptive()
            .background(Color("appbg"))
            .onAppear(perform: {
                customerApi.getCustomerprofile(success: { res in
                    AppUtil.user = res
                    name = AppUtil.user?.name ?? ""
                    email = AppUtil.user?.email ?? ""
                    mobileNo = AppUtil.user?.phone ?? ""
                    address = AppUtil.user?.address ?? ""
                    
                }, failure: { _ in
                    
                })
            })
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}

//
//  VerificationScreen.swift
//  Khebra
//
//  Created by Sheheryar on 30/08/2022.
//

import SwiftUI

struct VerificationScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var showPreloader: Bool = false
    @StateObject var viewModel = ViewModel()
    @State var isFocused = false
    @State var togglepopup: Bool = false
    @State var errorMessage: String = ""
    let textBoxWidth = UIScreen.main.bounds.width / 8
    let textBoxHeight = UIScreen.main.bounds.width / 8
    let spaceBetweenBoxes: CGFloat = 20
    let paddingOfBox: CGFloat = 1
    var textFieldOriginalWidth: CGFloat {
        (textBoxWidth*4)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
    }
    var body: some View {
        ZStack{
            VStack{
                TopNavigation()
                ScrollView{
                    VStack{
                        Image("verificationCode")
                            .scaledToFit()
                            .frame(alignment: .center)
                            .padding(.leading,10)
                            .padding(.vertical)
                        Text("Verification Code")
                            .bold()
                            .font(.system(size: 20))
                            .foregroundColor(Color("fontBlue"))
                            .padding(.vertical)
                          
                        
                        Text("Please send the verification code sent in an SMS to your mobile phone")
                            .font(.custom("STCRegular", size: 14))
                            .foregroundColor(Color("lightgray"))
                            .multilineTextAlignment(.center)
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.vertical)
                        
                        VStack{
                            ZStack{
                                HStack (spacing: 30){
                                    Spacer()
                                                         otpText(text: viewModel.otp1)
                                   // Spacer()
                                                         otpText(text: viewModel.otp2)
                                   // Spacer()
                                                         otpText(text: viewModel.otp3)
                                  //  Spacer()
                                                         otpText(text: viewModel.otp4)
                                    Spacer()
                                                        
                                                     }
                                                     
                                                     
                                                     TextField("", text: $viewModel.otpField)
                                                     .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                                                     .disabled(viewModel.isTextFieldDisabled)
                                                     .textContentType(.oneTimeCode)
                                                     .foregroundColor(.clear)
                                                     .accentColor(.clear)
                                                     .background(Color.clear)
                                                     .keyboardType(.numberPad)
                                                     .textContentType(.oneTimeCode)
                            }
                        }.padding(.vertical,10)
                        
                        CustomButton(title: "Next", callback: {
                            let object = VerifyOtp()
                            object.otp = AppUtil.otp
                            customerApi.verifyOtp(object, success: { res in
                                AppUtil.user = res.user
                                AppUtil.idToken = res.token ?? ""
                                
                                viewRouter.currentPage = "AccountCompletion"
                            }, failure: { f in
                                errorMessage = f
                                togglepopup.toggle()
                            })
                           
                        }).padding()
                        
                        HStack{
                            Text("00:59")
                                .font(.system(size: 16))
                                .foregroundColor(Color("B2C1E3"))
                        }.padding(.top,10)
                        HStack{
                            Text("Did not receive the code?")
                                .font(.system(size: 16))
                                .foregroundColor(Color("525252"))
                        }.padding(.top,10)
                        
                        HStack{
                            Text("Re-send")
                                .underline()
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                        }.padding(.top,10)
                        
                    }
                    
                }
            }
            
            if togglepopup {
                ZStack{
                    
                    VStack {}
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("000000"))
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.6)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 330, alignment: .center)
                        .foregroundColor(Color("B2C1E3"))
                        .shadow(color: Color("gray").opacity(0.2), radius: 2, x: 0, y: 1)
                        .overlay(
                            VStack{
                                VStack{
                                    Image("ordercancel")
                                        .scaledToFit()
                                }
                                .frame(width: 108, height: 110, alignment: .center)
                                .padding(.vertical)
                                
                                Text("Error?")
                                    .foregroundColor(Color("black"))
                                    .font(Font.custom("poppins", size: 20))
                                    .fontWeight(.bold)
                                
                                Text(errorMessage)
                                    .foregroundColor(Color("black").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .padding(.top,1)
                                
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 70)
                                            .foregroundColor(Color("White"))
                                        
                                        RoundedRectangle(cornerRadius: 70)
                                            .stroke(Color("buttonbg"),lineWidth: 1)
                                            .overlay(
                                                    Text("OK")
                                                        .foregroundColor(Color("black").opacity(0.4))
                                                        .font(Font.custom("poppins", size: 18))
                                                        .fontWeight(.regular)
                                            )
                                        
                                    }.frame(width: 120, height: 35, alignment: .center)
                                        .onTapGesture{
                                            togglepopup.toggle()
                                        }
                                    
                                   
                                }
                                .frame(width: UIScreen.main.bounds.width - 70)
                                .padding(.vertical)
                                    
                                
                            }
                        )

                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .onAppear(perform: {
                let otpValue = String(AppUtil.otp ?? 0)
                viewModel.otpField = otpValue
            
            })
    }
    
    private func otpText(text: String) -> some View {
              
              return Text(text)
                  .font(.title)
                  .frame(width: textBoxWidth, height: textBoxHeight)
                  .background(
                  RoundedRectangle(cornerRadius: 3)
                    .frame(width: 51, height: 63, alignment: .center)
                    .foregroundColor(Color("White"))
                    .shadow(radius: 0.5)
                  )
                 

                  .padding(paddingOfBox)
          }
}

struct VerificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        VerificationScreen()
    }
}

class ViewModel: ObservableObject {
    
    @Published var otpField = "" {
        didSet {
            guard otpField.count <= 6,
                  otpField.last?.isNumber ?? true else {
                otpField = oldValue
                return
            }
        }
    }
    var otp1: String {
        guard otpField.count >= 1 else {
            return ""
        }
        return String(Array(otpField)[0])
    }
    var otp2: String {
        guard otpField.count >= 2 else {
            return ""
        }
        return String(Array(otpField)[1])
    }
    var otp3: String {
        guard otpField.count >= 3 else {
            return ""
        }
        return String(Array(otpField)[2])
    }
    var otp4: String {
        guard otpField.count >= 4 else {
            return ""
        }
        return String(Array(otpField)[3])
    }
    
//    var otp5: String {
//        guard otpField.count >= 5 else {
//            return ""
//        }
//        return String(Array(otpField)[4])
//    }
//
//    var otp6: String {
//        guard otpField.count >= 6 else {
//            return ""
//        }
//        return String(Array(otpField)[5])
//    }
    
    @Published var borderColor: Color = .black
    @Published var isTextFieldDisabled = false
    var successCompletionHandler: (()->())?
    
    @Published var showResendText = false

}

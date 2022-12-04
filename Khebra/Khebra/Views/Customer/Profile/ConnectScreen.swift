//
//  ConnectScreen.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI
import MessageUI

struct ConnectScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Share App and win with us")
                ScrollView{
                   
                    ConnectCard(borderColor: "137D3B", name: "Whatsapp", ImageName: "whatsapp")
                        .onTapGesture {
                            navigateToWhatsApp()
                        }
                    
                    ConnectCard(borderColor: "fontBlue", name: "quick conversation", ImageName: "quickconvo")
                        .onTapGesture {
                            let sms = "sms:+1234567890&body=Hello Abc How are You I am ios developer."
                            let strURL = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                            UIApplication.shared.open(URL(string: strURL)!, options: [:], completionHandler: nil)
                        }
                    
                    ConnectCard(borderColor: "buttonbg", name: "Telephone Conversation", ImageName: "telephoneconvo")
                        .onTapGesture {
                            let telephone = "tel://"
                            let formattedString = telephone + "123456789"
                            guard let url = URL(string: formattedString) else { return }
                            UIApplication.shared.open(url)
                        }
                    
                    ConnectCard(borderColor: "F44336", name: "Send Email", ImageName: "gmail")
                        .onTapGesture {
                            sendEmail()
                        }
                        
                }
                
                
                
                
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))

    }
    
    func sendEmail() {
       
        let mailTo = "mailto:nemecek@support.com?subject=Cool app feedback&body=Hello I have an issue...".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let mailtoUrl = URL(string: mailTo!)!
        if UIApplication.shared.canOpenURL(mailtoUrl) {
                UIApplication.shared.open(mailtoUrl, options: [:])
        }
       
    }
    
    func navigateToWhatsApp() {
        var countryCode = "+91" //Country code
        var mobileNumber = "1234567890" //Mobile number
        let urlString = "https://api.whatsapp.com/send?phone=\(countryCode)\(mobileNumber)"

        let urlStringEncoded = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)

        let URL = NSURL(string: urlStringEncoded!)

        if UIApplication.shared.canOpenURL(URL! as URL) {
            debugPrint("opening Whatsapp")
            UIApplication.shared.open(URL as! URL, options: [:]) { status in
                debugPrint("Opened WhatsApp Chat")
            }
        } else {
            debugPrint("Can't open")
        }
    }
}

struct ConnectScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConnectScreen()
    }
}

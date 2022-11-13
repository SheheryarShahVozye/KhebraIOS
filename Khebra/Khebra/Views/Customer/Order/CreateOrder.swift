//
//  CreateOrder.swift
//  Khebra
//
//  Created by Sheheryar on 01/09/2022.
//

import SwiftUI
import Combine

struct CreateOrder: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var serviceManager: ServiceManager
    @State var details: String = ""
    @State var schedulePopup: Bool = false
    @State var cash: Bool = false
    @State var imageUrl: String = ""
    @State var onDemant: Bool = false
    @State var pickerResult: [UIImage] = []
    @State var showImagePicker: Bool = false
    @State var couponCode: String = ""
    @State var showPreloader: Bool = false
    @State var orderDate: Date = Date()
    @State var orderTime: Date = Date()
    @State var coordiantes: [Double] = []
    var body: some View {
        ZStack{
            
            VStack{
                TopNavigation(titleText: "Order Details")
                ScrollView{
                    VStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(Color("White"))
                            
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("fontBlue"),lineWidth: 0.5)
                                .overlay(
                                    VStack{
                                        
                                        VStack{
                                            VStack{
                                                HStack{
                                                    Image("doubleTick")
                                                        .scaledToFit()
                                                    Text("make sure you agree a price beforehand")
                                                        .font(.system(size: 16))
                                                        .foregroundColor(Color("464646"))
                                                        .fontWeight(.regular)
                                                    
                                                    Spacer()
                                                }.padding(.horizontal)
                                                
                                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                    .frame(height: 1)
                                                    .foregroundColor(Color("B2C1E3"))
                                                    .padding(.horizontal)
                                            }
                                            
                                            VStack{
                                                HStack{
                                                    Image("doubleTick")
                                                        .scaledToFit()
                                                    Text("30 days warranty for hand word")
                                                        .font(.system(size: 16))
                                                        .foregroundColor(Color("464646"))
                                                        .fontWeight(.regular)
                                                    
                                                    Spacer()
                                                }.padding(.horizontal)
                                                
                                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                    .frame(height: 1)
                                                    .foregroundColor(Color("B2C1E3"))
                                                    .padding(.horizontal)
                                            }
                                            
                                            VStack{
                                                HStack{
                                                    Image("doubleTick")
                                                        .scaledToFit()
                                                    Text("Free detection")
                                                        .font(.system(size: 16))
                                                        .foregroundColor(Color("464646"))
                                                        .fontWeight(.regular)
                                                    
                                                    Spacer()
                                                }.padding(.horizontal)
                                                
                                                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                                    .frame(height: 1)
                                                    .foregroundColor(Color("B2C1E3"))
                                                    .padding(.horizontal)
                                            }
                                            
                                            VStack{
                                                HStack{
                                                    Image("doubleTick")
                                                        .scaledToFit()
                                                    Text("7 SAR spare parts delivery cost, if any")
                                                        .font(.system(size: 16))
                                                        .foregroundColor(Color("464646"))
                                                        .fontWeight(.regular)
                                                    
                                                    Spacer()
                                                }.padding(.horizontal)
                                                
                                                
                                            }
                                            
                                            
                                        }
                                        
                                    }
                                )
                            
                        }.frame(width: UIScreen.main.bounds.width - 50, height: 200, alignment: .center)
                        
                        VStack{
                            HStack{
                                Text("Set Order time")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("black"))
                                Spacer()
                            }.padding(.horizontal,30)
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Spacer()
                                
                                HStack{
                                    Spacer()
                                    Image("ondemand")
                                        .scaledToFit()
                                    Text("On Demand")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                    Spacer()
                                }.padding(.vertical,10)
                                    .padding(.horizontal,10)
                                    .background(Color("White"))
                                    .border(Color("B2C1E3").opacity(0.6))
                                
                                Group{
                                    
                                    HStack{
                                        Spacer()
                                        Image("appointment")
                                            .scaledToFit()
                                        Text("Scheduled")
                                            .font(.system(size: 16))
                                            .fontWeight(.medium)
                                            .foregroundColor(Color("B2C1E3"))
                                        Spacer()
                                    }.padding(.vertical,10)
                                        .padding(.horizontal,10)
                                        .background(Color("FAFCFF"))
                                        .border(Color("B2C1E3").opacity(0.6))
                                        .onTapGesture{
                                            schedulePopup.toggle()
                                        }
                                }.offset(x:-10)
                                
                                Spacer()
                                
                                
                                
                            }.frame(width: UIScreen.main.bounds.width - 50)
                        }
                        
                        VStack{
                            HStack{
                                Text("More Details")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("black"))
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 110, alignment: .center)
                                .foregroundColor(Color("White"))
                                .overlay(
                                    TextEditor(text: $details)
                                        .padding(.leading)
                                    
                                )
                            
                        }
                        
                        VStack{
                            HStack{
                                Text("Add Photo")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("black"))
                                    .onTapGesture{
                                        showImagePicker.toggle()
                                    }
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            HStack{
                                ForEach(0 ..< pickerResult.count,id:\.self) { item in
                                    Image(uiImage: pickerResult[item])
                                        .resizable()
                                        .frame(width: 75, height: 62, alignment: .center)
                                        .scaledToFit()
                                }
                              
                                
                                Spacer()
                            }.padding(.horizontal,30)
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                Text("Choose your payment method")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("black"))
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                Image("apple-pay-logo-F68C9AC252-seeklogo.com")
                                                
                                            }
                                        )
                                }
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                Image("stcpay")
                                            }
                                        )
                                }
                                
                                
                            }.frame(width: UIScreen.main.bounds.width - 50,height: 45)
                            
                            
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                Image("tamara")
                                                
                                            }
                                        )
                                }
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color("B2C1E3"),lineWidth: 1)
                                        .overlay(
                                            HStack{
                                                Image("Visa_Inc._logo")
                                            }
                                        )
                                }
                                
                                
                            }.frame(width: UIScreen.main.bounds.width - 50,height: 45)
                                .padding(.vertical)
                            
                            
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(cash ? Color("fontBlue")  : Color("White"))
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(cash ? Color("White") : Color("B2C1E3"),lineWidth: 1)
                                    .overlay(
                                        Text("Cash")
                                            .font(.system(size: 18))
                                            .fontWeight(.medium)
                                            .foregroundColor(cash ? Color("White") : Color("fontBlue"))
                                    )
                            }.frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                                .onTapGesture {
                                    cash.toggle()
                                }
                            
                            HStack{
                                Image("Rectangle 99")
                                    .scaledToFit()
                                
                                Spacer()
                            }.padding(.horizontal,30)
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                Group{
                                    VStack{
                                        Image("address")
                                            .scaledToFit()
                                        Spacer()
                                    }
                                }.frame(width: 25, height: 25, alignment: .center)
                                
                                Spacer()
                                VStack{
                                    HStack {
                                        Text("Address")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("B2C1E3"))
                                        
                                        Spacer()
                                    }
                                    HStack {
                                        Text(serviceManager.selectedLocation ?? "")
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("5A5A5A"))
                                        
                                        
                                        Spacer()
                                    }
                                    
                                }
                                
                                
                                Spacer()
                                
                                VStack {
                                    Text("Edit")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("buttonbg"))
                                    Spacer()
                                }
                                
                            }.padding(.horizontal,30)
                            
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Group{
                                    VStack{
                                        Image("service")
                                            .scaledToFit()
                                        Spacer()
                                    }
                                }.frame(width: 25, height: 25, alignment: .center)
                                
                                Spacer()
                                VStack{
                                    HStack {
                                        Text("Service")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("B2C1E3"))
                                        
                                        Spacer()
                                    }
                                    HStack {
                                        Text(serviceManager.selectedServiceId?.service ?? "")
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("5A5A5A"))
                                        
                                        
                                        Spacer()
                                    }
                                    
                                }
                                
                                
                                Spacer()
                                
                                VStack {
                                    Text("Edit")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("buttonbg"))
                                    Spacer()
                                }
                                
                            }.padding(.horizontal,30)
                            
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Group{
                                    Image("coupon")
                                        .scaledToFit()
                                }.frame(width: 25, height: 25, alignment: .center)
                                
                                
                                Text("Coupon code")
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("B2C1E3"))
                                
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            CustomTextField(value: $couponCode, placeHolder: "Coupon Code")
                            
                            CustomButton(title: "Send Order", callback: {
                                sendorder()
                            }).padding(.vertical)
                        }
                    }
                }
            } .sheet(isPresented: $showImagePicker) {
                PhotoPicker(images: $pickerResult, selectionLimit: 1)

            }
            
            if schedulePopup {
                VStack {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("B6BAC3"))
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)
                
                VStack{
                    VStack{
                        HStack{
                            Text("Schedule Order")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.regular)
                        }
                        HStack{
                            Text("Select Date & Time")
                                .font(.system(size: 16))
                                .foregroundColor(Color("fontBlue"))
                                .fontWeight(.light)
                                .padding(.top,5)
                        }
                        
                        
                        HStack{
                            Spacer()
                            VStack{
                                HStack{
                                    Text("Time")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color("fontBlue"))
                                        .fontWeight(.light)
                                        .padding(.top,5)
                                    
                                    Spacer()
                                }
                                HStack{
                                    Spacer()
                                    Image("ondemand")
                                        .scaledToFit()
                                    DatePicker(selection: $orderTime,displayedComponents: .hourAndMinute, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                                        .labelsHidden()
                                    
                                    
                                    Spacer()
                                }.padding(.vertical,10)
                                    .padding(.horizontal,10)
                                    .background(Color("White"))
                                    .border(Color("B2C1E3").opacity(0.6))
                            }
                            
                            
                            Group{
                                VStack{
                                    HStack{
                                        Text("Date")
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("fontBlue"))
                                            .fontWeight(.light)
                                            .padding(.top,5)
                                        
                                        Spacer()
                                    }
                                    HStack{
                                        Spacer()
                                        Image("appointment")
                                            .scaledToFit()
                                        DatePicker(selection: $orderDate ,displayedComponents: .date, label: { Text("Date") })
                                            .labelsHidden()
                                        Spacer()
                                    }.padding(.vertical,10)
                                        .padding(.horizontal,10)
                                        .background(Color("White"))
                                        .border(Color("B2C1E3").opacity(0.6))
                                }
                                
                            }.offset(x:-10)
                            
                            Spacer()
                            
                            
                            
                        }.frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .padding(.top,10)
                    
                    
                    
                    
                    OrderButton(title: "Done", callback: {
                        schedulePopup.toggle()
                    }).padding(.top)
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width - 20,
                        height: 300, alignment: .center)
                    .background(Color("White"))
            }
            
            if showPreloader {
                VStack {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("B6BAC3"))
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)

                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: Color("buttonbg")))
                    .scaleEffect(x: 4, y: 4, anchor: .center)
            }
            
            
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("appbg"))
            .onTapGesture {
                hideKeyboard()
            }
    }
    
    func sendorder(){
        showPreloader = true
        let objBody = CreateOrderObject()
        let location = Location()
        let orderTimeObj = OrderTime()
        
        orderTimeObj.date = AppUtil.getPostDateString(orderDate)
        orderTimeObj.time = AppUtil.getAmPmTime(orderTime)
     
        
//        coordiantes.append(AppUtil.addServiceLocationLatitude ?? 0)
//        coordiantes.append(AppUtil.addServiceLocationLongitude ?? 0)
        
        coordiantes.append(33.72148)
        coordiantes.append(73.04329)
        
        location.coordinates = coordiantes
        
        objBody.moreDetails = details
        objBody.cash = cash
        objBody.address = serviceManager.selectedLocation ?? ""
       // objBody.onDemant = onDemant
        objBody.couponCode = couponCode
        objBody.location = location
        objBody.scheduled = orderTimeObj
        
        if pickerResult.count > 0 {
            customerApi.uploadImageForService(paramName: "files", fileName: "any", image: pickerResult, success: { res in
                objBody.url = res[0]
                customerApi.createOrder(serviceManager.selectedServiceId?._id ?? "", body: objBody, success: { res in
                    DispatchQueue.main.async {
                        
                        serviceManager.createdOrderData = res
                        showPreloader = false
                        viewRouter.currentPage = "OrderDetailScreen"
                    }
                  
                }, failure: { _ in
                    showPreloader = false
                })
            }, failure: { _ in
                showPreloader = false
            })
        } else {
            customerApi.createOrder(serviceManager.selectedServiceId?._id ?? "", body: objBody, success: { res in
                DispatchQueue.main.async {
                    showPreloader = false
                    serviceManager.createdOrderData = res
                    viewRouter.currentPage = "OrderDetailScreen"
                }
                
            }, failure: { _ in
                showPreloader = false
            })
        }
    
       
        
    }
}

struct CreateOrder_Previews: PreviewProvider {
    static var previews: some View {
        CreateOrder()
    }
}

struct KeyboardAdaptive: ViewModifier {
    @State private var bottomPadding: CGFloat = 0
    
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            content
                .padding(.bottom, self.bottomPadding)
                .onReceive(Publishers.keyboardHeight) { keyboardHeight in
                    let keyboardTop = geometry.frame(in: .global).height - keyboardHeight
                    let focusedTextInputBottom = UIResponder.currentFirstResponder?.globalFrame?.maxY ?? 0
                    self.bottomPadding = max(0, focusedTextInputBottom - keyboardTop - geometry.safeAreaInsets.bottom)
                }
            
        }
    }
}

extension View {
    func keyboardAdaptive() -> some View {
        ModifiedContent(content: self, modifier: KeyboardAdaptive())
    }
}



extension Publishers {
    static var keyboardHeight: AnyPublisher<CGFloat, Never> {
        let willShow = NotificationCenter.default.publisher(for: UIApplication.keyboardWillShowNotification)
            .map { $0.keyboardHeight }
        
        let willHide = NotificationCenter.default.publisher(for: UIApplication.keyboardWillHideNotification)
            .map { _ in CGFloat(0) }
        
        return MergeMany(willShow, willHide)
            .eraseToAnyPublisher()
    }
}

extension Notification {
    var keyboardHeight: CGFloat {
        return (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
    }
}

extension UIResponder {
    static var currentFirstResponder: UIResponder? {
        _currentFirstResponder = nil
        UIApplication.shared.sendAction(#selector(UIResponder.findFirstResponder(_:)), to: nil, from: nil, for: nil)
        return _currentFirstResponder
    }
    
    private static weak var _currentFirstResponder: UIResponder?
    
    @objc private func findFirstResponder(_ sender: Any) {
        UIResponder._currentFirstResponder = self
    }
    
    var globalFrame: CGRect? {
        guard let view = self as? UIView else { return nil }
        return view.superview?.convert(view.frame, to: nil)
    }
}

#if canImport(UIKit)
    extension View {
        func hideKeyboard() {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
#endif

//
//  BusinessSectorScreen.swift
//  Khebra
//
//  Created by Sheheryar on 02/09/2022.
//

import Combine
import MobileCoreServices
import SwiftUI
import UniformTypeIdentifiers

struct BusinessSectorScreen: View {
    @State var showDocumentPicker: Bool = false
    @EnvironmentObject var serviceManager: ServiceManager
    @State var documentData: [Data]? = []
    @State var documentUrl: String = ""
    @State var details: String = ""
    @State var showPreloader: Bool = false
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Business Sector")
                ScrollView{
                    VStack{
                        HStack
                        {
                            Text("Please write project details and attach files and photos,if any")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color("464646"))
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .padding(.horizontal)
                        }
                        
                        VStack{
                            HStack{
                                Group{
                                    Image("service")
                                        .scaledToFit()
                                    Text("Service")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color("5F5E5E"))
                                        .fontWeight(.medium)
                                        
                                }
                               
                                
                                Spacer()
                            }.padding(.leading,25)
                            CustomTextField(value: .constant(serviceManager.selectedService ?? "") )
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Group{
                                    Image("details")
                                        .scaledToFit()
                                    Text("Details")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color("5F5E5E"))
                                        .fontWeight(.medium)
                                        
                                }
                               
                                
                                Spacer()
                            }.padding(.leading,25)
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 110, alignment: .center)
                                .foregroundColor(Color("White"))
                                .overlay(
                                    TextEditor(text: $details)
                                        .padding(.leading)
                                        
                                )
                        }.padding(.vertical)
                        
                        VStack{
                            HStack{
                                Group{
                                    Image("thumbnail")
                                        .scaledToFit()
                                    Text("Attached Photos And Files")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color("5F5E5E"))
                                        .fontWeight(.medium)
                                        
                                }
                               
                                
                                Spacer()
                            }.padding(.leading,25)
                            
                            RoundedRectangle(cornerRadius: 0)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 45, alignment: .center)
                                .foregroundColor(Color("White"))
                                .overlay(
                                    HStack{
                                        Image("thumbnail")
                                            .scaledToFit()
                                        Text("Upload file")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("B2C1E3"))
                                            .fontWeight(.medium)
                                        Spacer()
                                    }.padding(.horizontal)
                                ).onTapGesture {
                                    showDocumentPicker.toggle()
                                }
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                if documentUrl != "" {
                                    if documentData?.count ?? 0 > 0 {
                                        ForEach(0 ..< (documentData?.count ?? 0),id:\.self) { _ in
                                            VStack{
                                                Image("Rectangle 99")
                                                    .scaledToFit()
                                                
                                                
                                                RoundedRectangle(cornerRadius: 0)
                                                    .frame(width: 73, height: 36, alignment: .center)
                                                    .foregroundColor(Color("White"))
                                                    .shadow(radius: 0.5)
                                                    .overlay(
                                                        Text("file 1")
                                                            .font(.system(size: 12))
                                                            .foregroundColor(Color("B2C1E3"))
                                                            .fontWeight(.medium)
                                                    )
                                                
                                            }
                                       }
                                       
                                    }
                                   
                                }
                                
                               
                               
                                
                                Spacer()
                                
                            }.padding(.horizontal,25)
                            
                            
                            CustomButton(title: "Submit",callback: {
                                showPreloader = true
                                AppUtil.documentsData = documentData
                                if serviceManager.selectedService == "Maintenance" {
                                    let obj = AddBusinessObject()
                                    obj.details = details
                                    if AppUtil.businessCategories?.count ?? 0 > 0 {
                                        obj.category = AppUtil.businessCategories?[0]._id ?? ""
                                    }
                                    if documentData?.count ?? 0 > 0 {
                                        customerApi.uploadFile(paramName: "files", fileName: "files", fileData: AppUtil.documentsData ?? [], completion: { res in
                                                obj.url = res
                                            
                                                customerApi.addMaitainance(body: obj, success: { _ in
                                                    showPreloader = false
                                                    viewRouter.goBack()
                                                }, failure: { _ in
                                                    showPreloader = false
                                                })
                                            }, incomplete: { _ in
                                                showPreloader = false
                                            })
                                    } else {
                                        customerApi.addMaitainance(body: obj, success: { _ in
                                            showPreloader = false
                                            viewRouter.goBack()
                                        }, failure: { _ in
                                            showPreloader = false
                                        })
                                    }
                                     
                                }
                                if serviceManager.selectedService == "Engineering Construction" {
                                    let obj = AddBusinessObject()
                                    obj.details = details
                                    if AppUtil.businessCategories?.count ?? 0 > 0 {
                                        obj.category = AppUtil.businessCategories?[1]._id ?? ""
                                    }
                                    if documentData?.count ?? 0 > 0 {
                                        customerApi.uploadFile(paramName: "files", fileName: "files", fileData: AppUtil.documentsData ?? [], completion: { res in
                                                obj.url = res
                                            
                                                customerApi.addbusinessEngConstruction(body: obj, success: { _ in
                                                    showPreloader = false
                                                    viewRouter.goBack()
                                                }, failure: { _ in
                                                    showPreloader = false
                                                })
                                            }, incomplete: { _ in
                                                showPreloader = false
                                            })
                                    } else {
                                        customerApi.addbusinessEngConstruction(body: obj, success: { _ in
                                            showPreloader = false
                                            viewRouter.goBack()
                                        }, failure: { _ in
                                            showPreloader = false
                                        })
                                    }
                                     
                                }
                                
                                if serviceManager.selectedService == "Engineering Designs" {
                                    let obj = AddBusinessObject()
                                    obj.details = details
                                    if AppUtil.businessCategories?.count ?? 0 > 0 {
                                        obj.category = AppUtil.businessCategories?[1]._id ?? ""
                                    }
                                    if documentData?.count ?? 0 > 0 {
                                        customerApi.uploadFile(paramName: "files", fileName: "files", fileData: AppUtil.documentsData ?? [], completion: { res in
                                                obj.url = res
                                            
                                                customerApi.addbusinessEngDesign(body: obj, success: { _ in
                                                    showPreloader = false
                                                    viewRouter.goBack()
                                                }, failure: { _ in
                                                    showPreloader = false
                                                })
                                            }, incomplete: { _ in
                                                showPreloader = false
                                            })
                                    } else {
                                        customerApi.addbusinessEngDesign(body: obj, success: { _ in
                                            showPreloader = false
                                            viewRouter.goBack()
                                        }, failure: { _ in
                                            showPreloader = false
                                        })
                                    }
                                     
                                }
                            }).padding(.vertical,10)
                                         
                        }.padding(.top,5)
                    }
                }
                
            }
            .sheet(isPresented: $showDocumentPicker, content: {
                DocumentPicker(documentUrl: $documentUrl,documentData: $documentData)
            })
            
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
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        
            .ignoresSafeArea(.all)
            .keyboardAdaptive()
            .background(Color("appbg"))
          
            .onTapGesture {
                hideKeyboard()
            }
    }
}

struct BusinessSectorScreen_Previews: PreviewProvider {
    static var previews: some View {
        BusinessSectorScreen()
    }
}

struct DocumentPicker: UIViewControllerRepresentable {
    @Binding var documentUrl: String
    @Binding var documentData: [Data]?
    func makeCoordinator() -> Coordinator {
        return DocumentPicker.Coordinator(parent1: self)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<DocumentPicker>) -> UIDocumentPickerViewController {
        let picker = UIDocumentPickerViewController(documentTypes: [kUTTypePDF as String], in: .import)
        picker.allowsMultipleSelection = false
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_: UIDocumentPickerViewController, context _: UIViewControllerRepresentableContext<DocumentPicker>) {}

    class Coordinator: NSObject, UIDocumentPickerDelegate {
        var parent: DocumentPicker

        init(parent1: DocumentPicker) {
            parent = parent1
        }

        func documentPicker(_: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            if !urls.isEmpty {
                do {
                
                
                    let documentData = try Data(contentsOf: urls.first!)
                    AppUtil.documentsData?.append(documentData)
                    self.parent.documentData?.append(documentData)
                    self.parent.documentUrl = urls.first!.lastPathComponent
//                    NewAPIUtil.uploadDocument(file: documentData, mimeType: AppUtil.getMimeType(for: documentData), documentExtension: urls.first!.pathExtension, success: { result in
//                        print("\(result)")
//                        print("\(result.data)")
//                        self.parent.documentUrl = result.data
//                    }, failure: { f in
//                        print(f)
//                    })
                } catch {
                    print(error)
                }
            }
        }
    }
}

//
//  customerApi.swift
//  Khebra
//
//  Created by Sheheryar on 13/09/2022.
//

import Foundation
import Alamofire
import SystemConfiguration


class customerApi: NSObject, URLSessionDelegate {
    public static var baseUrl: String = "http://52.71.104.161:8080/api/v1/"

    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        
        //accept all certs when testing, perform default handling otherwise
        
        print("Accepting cert as always")
        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
        //        }
        //        else {
        //            print("Using default handling")
        //            completionHandler(.performDefaultHandling, URLCredential(trust: challenge.protectionSpace.serverTrust!))
        //        }
    }
    
    public static func post(url: String, data: Data?, completion: @escaping (Data?) -> Void, incomplete: @escaping (String) -> Void) {
        var request = URLRequest(url: URL(string: baseUrl + url)!)
        request.httpMethod = "POST"
        
        if data != nil {
            request.httpBody = data
        }
        
//        if GlobalVars.idToken!.isEmpty || GlobalVars.idToken!.isEmpty {
//            return incomplete(Strings.invalidTokenError)
//            // return incomplete("Error: invalid token")
//        }
        
        var flags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(AppUtil.reachability!, &flags)
        if !AppUtil.isNetworkReachable(with: flags) {
            return incomplete(Strings.networkError)
        }
        
        request.setValue("Bearer " + AppUtil.idToken, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request, completionHandler: { responseData, response, error in
            if error != nil {
                print("\n\(error!.localizedDescription)\n")
                
                if error?._code == NSURLErrorTimedOut {
                    return incomplete(Strings.timedOutError)
                }
                
                return incomplete(error!.localizedDescription)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print("\nStatus code Post: \(httpResponse!.statusCode) \n")
                if httpResponse?.statusCode == 401 {
                    return incomplete(Strings.unAuthorizedUserError)
                } else if httpResponse?.statusCode == 403 {
                    return incomplete(Strings.accountInActiveError)
                }
                return completion(responseData!)
            }
        })
        task.resume()
    }
    
    public static func delete(url: String, data: Data?, completion: @escaping (Data?) -> Void, incomplete: @escaping (String) -> Void) {
        var request = URLRequest(url: URL(string: baseUrl + url)!)
        request.httpMethod = "DELETE"
        
        if data != nil {
            request.httpBody = data
        }
        
//        if GlobalVars.idToken!.isEmpty || GlobalVars.idToken!.isEmpty {
//            return incomplete(Strings.invalidTokenError)
//            // return incomplete("Error: invalid token")
//        }
        
        var flags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(AppUtil.reachability!, &flags)
        if !AppUtil.isNetworkReachable(with: flags) {
            return incomplete(Strings.networkError)
        }
        
        request.setValue("Bearer " + AppUtil.idToken, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request, completionHandler: { responseData, response, error in
            if error != nil {
                print("\n\(error!.localizedDescription)\n")
                
                if error?._code == NSURLErrorTimedOut {
                    return incomplete(Strings.timedOutError)
                }
                
                return incomplete(error!.localizedDescription)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print("\nStatus code Post: \(httpResponse!.statusCode) \n")
                if httpResponse?.statusCode == 401 {
                    return incomplete(Strings.unAuthorizedUserError)
                } else if httpResponse?.statusCode == 403 {
                    return incomplete(Strings.accountInActiveError)
                }
                return completion(responseData!)
            }
        })
        task.resume()
    }
    
    public static func put(url: String, data: Data?, completion: @escaping (Data?) -> Void, incomplete: @escaping (String) -> Void) {
        var request = URLRequest(url: URL(string: baseUrl + url)!)
        request.httpMethod = "PUT"
        
        if data != nil {
            request.httpBody = data
        }
        
//        if GlobalVars.idToken!.isEmpty || GlobalVars.idToken!.isEmpty {
//            return incomplete(Strings.invalidTokenError)
//            // return incomplete("Error: invalid token")
//        }
        
        var flags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(AppUtil.reachability!, &flags)
        if !AppUtil.isNetworkReachable(with: flags) {
            return incomplete(Strings.networkError)
        }
        
        request.setValue("Bearer " + AppUtil.idToken, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request, completionHandler: { responseData, response, error in
            if error != nil {
                print("\n\(error!.localizedDescription)\n")
                
                if error?._code == NSURLErrorTimedOut {
                    return incomplete(Strings.timedOutError)
                }
                
                return incomplete(error!.localizedDescription)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print("\nStatus code Post: \(httpResponse!.statusCode) \n")
                if httpResponse?.statusCode == 401 {
                    return incomplete(Strings.unAuthorizedUserError)
                } else if httpResponse?.statusCode == 403 {
                    return incomplete(Strings.accountInActiveError)
                }
                return completion(responseData!)
            }
        })
        task.resume()
    }
    
    
    public static func get(url: String, completion: @escaping (Data?) -> Void, incomplete: @escaping (String) -> Void) {
//        if GlobalVars.idToken!.isEmpty || GlobalVars.idToken!.isEmpty {
//            return incomplete(Strings.invalidTokenError)
//            // return incomplete("Error: invalid token")
//        }
        
        var flags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(AppUtil.reachability!, &flags)
        
        if !AppUtil.isNetworkReachable(with: flags) {
            return incomplete(Strings.networkError)
        }
        
        let urlString = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        var request = URLRequest(url: URL(string: baseUrl + urlString!)!)
        request.httpMethod = "GET"
        print("\n --- TOKEN --- \n \(String(describing: AppUtil.idToken)) \n")
        request.setValue("Bearer " + AppUtil.idToken, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request, completionHandler: {  responseData, response, error in
            if error != nil {
                print("\n\(error!.localizedDescription)\n")
                if error?._code == NSURLErrorTimedOut {
                    return incomplete(Strings.timedOutError)
                }
                
                return incomplete(error!.localizedDescription)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print("\nStatus code Get: \(httpResponse!.statusCode) \n")
                if httpResponse?.statusCode == 401 {
                    //                    AppUtil.idToken = ""
                    return incomplete(Strings.unAuthorizedUserError)
                } else if httpResponse?.statusCode == 403 {
                    return incomplete(Strings.accountInActiveError)
                }
                print("\n --- DATA --- \n")
                print(responseData!)
                print("\n")
                print("\n --- RESPONSE --- \n")
                print(response!)
                print("\n")
                return completion(responseData!)
            }
        })
        task.resume()
    }
    
    public static func registerCustomer(_ body: RegisterBody,success: @escaping (RegisterResponseBody) -> Void, failure: @escaping (String) -> Void) {
        let url: String = "customer/register"
        do{
            let jsonData = try JSONEncoder().encode(body)
            let json = String(data: jsonData, encoding: String.Encoding.utf8)
            print("\n\n\(json ?? "-")\n\n")
           
            post(url: url,data:jsonData, completion: { result in
                do {
                    let jsonString = String(data: result!, encoding: .utf8)
                    print("\n\n\(jsonString ?? "-")\n\n")
                    
                    let userObj: RegisterResponseBody = try JSONDecoder()
                        .decode(RegisterResponseBody.self, from: result!)
                    
                    success(userObj)
                    
                } catch {
                    print("\n\n\(error)\n at line \(#line)")
                    print("\n\nError in decoding \(error.localizedDescription)\n")
                    failure(Strings.requestApiError)
                    // failure("Error in decoding")
                }
            }, incomplete: { incomp  in
                failure(incomp)
            })
        }  catch {
            print("\n\n\(error)\n at line \(#line)")
            print("\n\nError in encoding \(error.localizedDescription)\n")
            failure(Strings.requestApiError)
            // failure("Error in encoding")
        }
    }
    
    public static func loginCustomer(_ body: RegisterBody,success: @escaping (LoginResponse) -> Void, failure: @escaping (String) -> Void) {
        let url: String = "customer/login"
        do{
            let jsonData = try JSONEncoder().encode(body)
            let json = String(data: jsonData, encoding: String.Encoding.utf8)
            print("\n\n\(json ?? "-")\n\n")
           
            post(url: url,data:jsonData, completion: { result in
                do {
                    let jsonString = String(data: result!, encoding: .utf8)
                    print("\n\n\(jsonString ?? "-")\n\n")
                    
                    let userObj: LoginResponse = try JSONDecoder()
                        .decode(LoginResponse.self, from: result!)
                    
                    success(userObj)
                    
                } catch {
                    print("\n\n\(error)\n at line \(#line)")
                    print("\n\nError in decoding \(error.localizedDescription)\n")
                    failure(Strings.requestApiError)
                    // failure("Error in decoding")
                }
            }, incomplete: { incomp  in
                failure(incomp)
            })
        }  catch {
            print("\n\n\(error)\n at line \(#line)")
            print("\n\nError in encoding \(error.localizedDescription)\n")
            failure(Strings.requestApiError)
            // failure("Error in encoding")
        }
    }
    
    public static func verifyOtp(_ body: VerifyOtp,success: @escaping (UserResponse) -> Void, failure: @escaping (String) -> Void) {
        let url: String = "customer/verify/otp"
        do{
            let jsonData = try JSONEncoder().encode(body)
            let json = String(data: jsonData, encoding: String.Encoding.utf8)
            print("\n\n\(json ?? "-")\n\n")
           
            post(url: url,data:jsonData, completion: { result in
                do {
                    let jsonString = String(data: result!, encoding: .utf8)
                    print("\n\n\(jsonString ?? "-")\n\n")
                    
                    let userObj: UserResponse = try JSONDecoder()
                        .decode(UserResponse.self, from: result!)
                    
                    success(userObj)
                    
                } catch {
                    print("\n\n\(error)\n at line \(#line)")
                    print("\n\nError in decoding \(error.localizedDescription)\n")
                    failure(Strings.requestApiError)
                    // failure("Error in decoding")
                }
            }, incomplete: { incomp  in
                failure(incomp)
            })
        }  catch {
            print("\n\n\(error)\n at line \(#line)")
            print("\n\nError in encoding \(error.localizedDescription)\n")
            failure(Strings.requestApiError)
            // failure("Error in encoding")
        }
    }
    
    public static func customerName(_ body: registerName,success: @escaping (UserResponse) -> Void, failure: @escaping (String) -> Void) {
        let url: String = "customer/verify/otp"
        do{
            let jsonData = try JSONEncoder().encode(body)
            let json = String(data: jsonData, encoding: String.Encoding.utf8)
            print("\n\n\(json ?? "-")\n\n")
           
            post(url: url,data:jsonData, completion: { result in
                do {
                    let jsonString = String(data: result!, encoding: .utf8)
                    print("\n\n\(jsonString ?? "-")\n\n")
                    
                    let userObj: UserResponse = try JSONDecoder()
                        .decode(UserResponse.self, from: result!)
                    
                    success(userObj)
                    
                } catch {
                    print("\n\n\(error)\n at line \(#line)")
                    print("\n\nError in decoding \(error.localizedDescription)\n")
                    failure(Strings.requestApiError)
                    // failure("Error in decoding")
                }
            }, incomplete: { incomp  in
                failure(incomp)
            })
        }  catch {
            print("\n\n\(error)\n at line \(#line)")
            print("\n\nError in encoding \(error.localizedDescription)\n")
            failure(Strings.requestApiError)
            // failure("Error in encoding")
        }
    }
    
    public static func updateCustomerprofle(_ body: ProfilePostBody,success: @escaping (User) -> Void, failure: @escaping (String) -> Void) {
        let url: String = "customer/profile/update"
        do{
            let jsonData = try JSONEncoder().encode(body)
            let json = String(data: jsonData, encoding: String.Encoding.utf8)
            print("\n\n\(json ?? "-")\n\n")
           
            put(url: url,data:jsonData, completion: { result in
                do {
                    let jsonString = String(data: result!, encoding: .utf8)
                    print("\n\n\(jsonString ?? "-")\n\n")
                    
                    let userObj: User = try JSONDecoder()
                        .decode(User.self, from: result!)
                    
                    success(userObj)
                    
                } catch {
                    print("\n\n\(error)\n at line \(#line)")
                    print("\n\nError in decoding \(error.localizedDescription)\n")
                    failure(Strings.requestApiError)
                    // failure("Error in decoding")
                }
            }, incomplete: { incomp  in
                failure(incomp)
            })
        }  catch {
            print("\n\n\(error)\n at line \(#line)")
            print("\n\nError in encoding \(error.localizedDescription)\n")
            failure(Strings.requestApiError)
            // failure("Error in encoding")
        }
    }
    
    public static func getCustomerprofile(success: @escaping (User) -> Void, failure: @escaping (String) -> Void) {
        let url: String = "customer/profile"
        do{
           
           
            get(url: url, completion: { result in
                do {
                    let jsonString = String(data: result!, encoding: .utf8)
                    print("\n\n\(jsonString ?? "-")\n\n")
                    
                    let userObj: User = try JSONDecoder()
                        .decode(User.self, from: result!)
                    
                    success(userObj)
                    
                } catch {
                    print("\n\n\(error)\n at line \(#line)")
                    print("\n\nError in decoding \(error.localizedDescription)\n")
                    failure(Strings.requestApiError)
                    // failure("Error in decoding")
                }
            }, incomplete: { incomp  in
                failure(incomp)
            })
        }
    }
    
    

}

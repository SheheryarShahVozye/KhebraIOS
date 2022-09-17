//
//  Strings.swift
//  Khebra
//
//  Created by Sheheryar on 13/09/2022.
//

import Foundation

class Strings {
    
    public static var facebookLoginError: String = "Canceled by the user."
    public static var googleLoginError: String = "The user canceled the sign-in flow."
    public static var appleLoginError: String = "The operation couldn’t be completed. (com.apple.AuthenticationServices.AuthorizationError error 1000.)"
    public static var unAuthorizedUserError: String = "Account not registered with us, please sign up."
    public static var emailUnverified: String = "Your email account is not verified yet, please check your inbox/spam to find verification email or click resend button to resend verification email."
    public static var emailVerificationFailed: String = "Your account has been created but your email account is not verified yet, please check your inbox/spam to find verification email."
    public static var emailVerificationSendMsg = "Verification link has been sent to your email address."
    public static var networkError: String = "No internet connection was found."
    public static var timedOutError: String = "Connection timed out."
    public static var accountInActiveError: String = "Your account is inactive, please contact support."
    public static var invalidTokenError: String = "Please log in again."
    public static var requestApiError: String = "Your request can't be processed at the moment."
}

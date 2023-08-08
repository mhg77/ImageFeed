//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 13.07.2023.
//

import Foundation
import SwiftKeychainWrapper

final class OAuth2TokenStorage {
    static var shared = OAuth2TokenStorage()
    
    var token: String? {
        get {
            KeychainWrapper.standard.string(forKey: "token")
        }
        set {
            assert(newValue != "", "token is wrong")
            KeychainWrapper.standard.set(newValue!, forKey: "token")
        }
    }
}

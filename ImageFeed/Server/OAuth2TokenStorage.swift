//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 13.07.2023.
//

import Foundation

final class OAuth2TokenStorage {
    static var shared = OAuth2TokenStorage()
    
    var token: String? {
        get {
            UserDefaults.standard.string(forKey: "token")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "token")
        }
    }
}

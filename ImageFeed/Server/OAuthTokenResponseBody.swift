//
//  OAuthTokenResponseBody.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 13.07.2023.
//

import Foundation

struct OAuthTokenResponseBody: Decodable {
    let accessToken: String
    let tokenType: String
    let scope: String
    let createdAt: Int
}

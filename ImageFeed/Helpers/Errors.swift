//
//  Errors.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 06.08.2023.
//

import Foundation

enum NetworkError: Error {
    case httpStatusCode(Int)
    case urlRequestError(Error)
    case urlSessionError(Error)
}

enum ParseError: Error {
    case decodeError(Error)
}

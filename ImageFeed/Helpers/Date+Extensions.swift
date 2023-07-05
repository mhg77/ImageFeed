//
//  Date+Extensions.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 05.07.2023.
//

import Foundation

private var dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    formatter.timeStyle = .none
    formatter.dateFormat = "dd MMM yyyy"
    return formatter
}()

extension Date {
    var dateTimeString: String { dateFormatter.string(from: self) }
}

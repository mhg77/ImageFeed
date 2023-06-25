//
//  ImageFeedCell.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 07.06.2023.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    @IBOutlet var cellImageView: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    
    static let reuseIdentifier = "ImagesListCell"
}

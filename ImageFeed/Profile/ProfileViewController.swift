//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 25.06.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var profileNameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    @IBAction func didTapLogoutButton() {
    }
}

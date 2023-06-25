//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 25.06.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet private var profileImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var profileNameLabel: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!
    @IBOutlet private var logoutButton: UIButton!
    
    @IBAction private func didTapLogoutButton() {
    }
}

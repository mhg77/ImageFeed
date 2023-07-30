//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Михаил Асаилов on 25.06.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private let profileService = ProfileService.shared
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Profile image")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Екатерина Новикова"
        label.textColor = .ypWhite
        label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let profileNameLabel: UILabel = {
        let label = UILabel()
        label.text = "@ekaterina_nov"
        label.textColor = .ypGray
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, world!"
        label.textColor = .ypWhite
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let logoutButton: UIButton = {
        let button = UIButton.systemButton(
            with: UIImage(named: "Logout button")!,
            target: ProfileViewController.self,
            action: #selector(didTapLogoutButton))
        button.tintColor = .ypRed
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(nibName: String?, bundle: Bundle?) {
        super.init(nibName: nibName, bundle: bundle)
        addObserver()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addObserver()
    }
    
    deinit {
        removeObserver()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .ypBlack
        
        view.addSubview(profileImageView)
        view.addSubview(nameLabel)
        view.addSubview(profileNameLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(logoutButton)
        
        constraintsSet()
        updateProfileDetails()
        
        if let avavtarURL = ProfileImageService.shared.avatarURL,
                   let url = URL(string: avavtarURL) {
        }
    }
    
    private func updateProfileDetails() {
        nameLabel.text = profileService.profile?.name
        profileNameLabel.text = profileService.profile?.loginName
        descriptionLabel.text = profileService.profile?.bio
    }
    
    private func constraintsSet() {
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor),
            
            profileNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            profileNameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: profileNameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: profileNameLabel.leadingAnchor),
            
            logoutButton.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor),
            logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            logoutButton.heightAnchor.constraint(equalToConstant: 44),
            logoutButton.widthAnchor.constraint(equalToConstant: 44)
            
        ])
    }
    
    private func addObserver() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateAvatar(notification:)),
            name: ProfileImageService.DidChangeNotification,
            object: nil
        )
    }
    
    private func removeObserver() {
        NotificationCenter.default.removeObserver(
            self,
            name: ProfileImageService.DidChangeNotification,
            object: nil
        )
    }
    
    @objc private func updateAvatar(notification: Notification) {
        guard
            isViewLoaded,
            let userInfo = notification.userInfo,
            let profileImageURL = userInfo["URL"] as? String,
            let url = URL(string: profileImageURL)
        else { return }
    }
    
    @objc private func didTapLogoutButton() {
    }
}

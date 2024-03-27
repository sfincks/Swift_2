//
//  AppDelegate.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "ChatApp"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .blue
        return label
    }()
    
//    private var loginField: UITextField = {
//        let login = UITextField()
//        login.borderStyle = .line
//        login.layer.borderWidth = 1
//        login.layer.borderColor = UIColor.black.cgColor
//        login.textColor = .black
//        let placeholderText = NSAttributedString(string: "Логин",
//                                                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
//        login.attributedPlaceholder = placeholderText
//        return login
//    }()
//
//    private var passwordField: UITextField = {
//        let password = UITextField()
//        password.borderStyle = .line
//        password.layer.borderWidth = 1
//        password.layer.borderColor = UIColor.black.cgColor
//        password.textColor = .black
//        let placeholderText = NSAttributedString(string: "Пароль",
//                                                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
//        password.attributedPlaceholder = placeholderText
//        return password
//    }()
    
    private var enterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        enterButton.addTarget(self, action: #selector(tap), for: .touchUpInside)
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(label)
//        view.addSubview(loginField)
//        view.addSubview(passwordField)
        view.addSubview(enterButton)
        setupConstraints()
    }

    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
//        loginField.translatesAutoresizingMaskIntoConstraints = false
//        passwordField.translatesAutoresizingMaskIntoConstraints = false
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
           
            
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width/2),
            label.heightAnchor.constraint(equalToConstant: view.frame.size.width/4),

            enterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: view.frame.size.width/6),
            enterButton.heightAnchor.constraint(equalToConstant: view.frame.size.width/8),
            
//            loginField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 30),
//            loginField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            loginField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            loginField.heightAnchor.constraint(equalToConstant: 50),
//
//            passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 10),
//            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            passwordField.heightAnchor.constraint(equalToConstant: 50),
            
            
        ])
    }
    
    @objc private func tap() {
        
        let tab1 = UINavigationController(rootViewController: FriendViewController())
        let tab2 = UINavigationController(rootViewController: GroupsViewController())
        let tab3 = UINavigationController(rootViewController: PhotosViewController(collectionViewLayout: UICollectionViewFlowLayout()))

        tab1.tabBarItem.title = "Friends"
        tab2.tabBarItem.title = "Groups"
        tab3.tabBarItem.title = "Photos"
        
        let controllers = [tab1, tab2, tab3]

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = controllers

//        navigationController?.pushViewController(tabBarController, animated: true)
        
        guard let firstScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let firstWindow = firstScene.windows.first else {
            return
        }

        firstWindow.rootViewController =  tabBarController
    }
}


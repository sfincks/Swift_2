//
//  FriendsMenu.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import UIKit

class GroupsMenu: UITableViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.backgroundColor = .white
        title = "Groups"
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .purple
        button1.addTarget(self, action: #selector(FriendTap), for: .touchUpInside)
        button2.addTarget(self, action: #selector(GroupTap), for: .touchUpInside)
        button3.addTarget(self, action: #selector(PhotoTap), for: .touchUpInside)
        setupViews()
    }
    
    
    
    private var label: UILabel = {
        let label = UILabel()
//        label.text = "ChatApp"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .blue
//        label.layer.zPosition = 1
        return label
    }()
    
     private var button1: UIButton = {
            let button = UIButton()
            button.setTitle("Friends", for: .normal)
            button.setTitleColor(.white, for: .highlighted)
            button.backgroundColor = .cyan
            return button
        }()
        private var button2: UIButton = {
            let button = UIButton()
            button.setTitle("Groups", for: .normal)
            button.setTitleColor(.white, for: .highlighted)
            button.backgroundColor = .purple
            return button
        }()
        private var button3: UIButton = {
            let button = UIButton()
            button.setTitle("Photos", for: .normal)
            button.setTitleColor(.white, for: .highlighted)
            button.backgroundColor = .red
            return button
        }()
        private func setupViews(){
            view.addSubview(label)
            view.addSubview(button1)
            view.addSubview(button2)
            view.addSubview(button3)
            
            setupConstraints()
        }
        
        private func setupConstraints(){
            label.translatesAutoresizingMaskIntoConstraints = false
            button1.translatesAutoresizingMaskIntoConstraints = false
            button2.translatesAutoresizingMaskIntoConstraints = false
            button3.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
            
                label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 20),
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.heightAnchor.constraint(equalToConstant: view.frame.size.height/8),
                label.widthAnchor.constraint(equalTo: view.widthAnchor),
                
                button1.centerYAnchor.constraint(equalTo: label.centerYAnchor),
    //            button1.leadingAnchor.constraint(equalTo: label.trailingAnchor,constant: 20),
                button1.trailingAnchor.constraint(equalTo: button2.leadingAnchor,constant: -40),
                button1.widthAnchor.constraint(equalToConstant: view.frame.size.width/6),
                button1.heightAnchor.constraint(equalToConstant: view.frame.size.width/8),
                
                button2.centerYAnchor.constraint(equalTo: label.centerYAnchor),
                button2.centerXAnchor.constraint(equalTo: label.centerXAnchor),
                button2.widthAnchor.constraint(equalToConstant: view.frame.size.width/6),
                button2.heightAnchor.constraint(equalToConstant: view.frame.size.width/8),
                
                button3.centerYAnchor.constraint(equalTo: label.centerYAnchor),
                button3.leadingAnchor.constraint(equalTo: button2.trailingAnchor,constant: 40),
    //            button3.trailingAnchor.constraint(equalTo: button2.leadingAnchor,constant: -40),
                button3.widthAnchor.constraint(equalToConstant: view.frame.size.width/6),
                button3.heightAnchor.constraint(equalToConstant: view.frame.size.width/8),
            ])
        }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        ""
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        3
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        FriendsMenuBase()
    }
       
}
private extension GroupsMenu {
    @objc func FriendTap(){
            navigationController?.pushViewController(FriendsMenu(), animated: true)
        }
        @objc func GroupTap(){
            navigationController?.pushViewController(GroupsMenu(), animated: true)
        }
        @objc func PhotoTap(){
            navigationController?.pushViewController(PhotosMenu(), animated: true)
        }
}

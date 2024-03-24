//
//  FriendsMenu.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import UIKit

class FriendsMenu: UITableViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.backgroundColor = .white
        title = "Friends"
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .cyan
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
    
    private func setupViews(){
        view.addSubview(label)
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.heightAnchor.constraint(equalToConstant: view.frame.size.height/8),
            label.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            
            
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

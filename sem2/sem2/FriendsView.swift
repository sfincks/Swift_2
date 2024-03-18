//
//  FriendsView.swift
//  sem2
//
//  Created by sfincks on 18.03.2024.
//

import Foundation
import UIKit

final class FriendsView: UITableViewCell {
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private var friendPortrait: UIView {
        let friendPortrait = UIView()
        friendPortrait.backgroundColor = .green
        friendPortrait.layer.cornerRadius = 25
        return friendPortrait
    }
    
   
    private var friendName: UILabel {
        let label = UILabel()
        label.text = "Иван Иванов"
        label.textColor = .black
        return label
    }
    
    private func setupViews() {
        contentView.addSubview(friendName)
        contentView.addSubview(friendPortrait)
        setupConstraints()
    }
    
    private func setupConstraints(){
        friendPortrait.translatesAutoresizingMaskIntoConstraints = false
        friendName.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            friendPortrait.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            friendPortrait.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            friendPortrait.heightAnchor.constraint(equalToConstant: 50),
            friendPortrait.widthAnchor.constraint(equalTo: friendPortrait.heightAnchor),
            
            friendName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            friendName.leadingAnchor.constraint(equalTo: friendPortrait.trailingAnchor, constant: 30),
            friendName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10)
            
        ])
        
        
    }
    
    
}

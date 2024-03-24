//
//  ChatMenuBase.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import Foundation
import UIKit

final class FriendsMenuBase: UITableViewCell {
    
    private var circle:UIView = {
        let circle = UIView()
        circle.backgroundColor = .green
        circle.layer.cornerRadius = 25
        return circle
    }()
    private var text1: UILabel = {
        let label = UILabel()
        label.text = "FriendName"
        label.textColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        contentView.addSubview(circle)
        contentView.addSubview(text1)
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        circle.translatesAutoresizingMaskIntoConstraints = false
        text1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            circle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            circle.heightAnchor.constraint(equalToConstant: 50),
            circle.widthAnchor.constraint(equalTo: circle.heightAnchor),
            
            text1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            text1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            text1.leadingAnchor.constraint(equalTo: circle.trailingAnchor, constant: 30),
            text1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            
        ])
    }
    
}

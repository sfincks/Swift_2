//
//  PhotosMenu.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import Foundation
import UIKit

class PhotosMenuBase: UICollectionViewCell {
    
    var tap: ((UIImage)->Void)?
    
    private var imageView = UIImageView(image: UIImage(systemName: "Person"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(cellTap))
        addGestureRecognizer(recognizer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        addSubview(imageView)
        setupConstraints()
    }
    
    private func setupConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
        
        ])
    }
    @objc func cellTap(){
        tap?(imageView.image ?? UIImage())
    }
}

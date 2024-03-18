//
//  CustomCollectionViewCell.swift
//  sem2
//
//  Created by sfincks on 18.03.2024.
//

import Foundation
import UIKit

class CustomCollectionViewCell:UICollectionViewCell {
    
    var tap: ((UIImage) -> Void)?
    
    private var imageView = UIImageView(image: UIImage(systemName: "person" ))
                                        
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

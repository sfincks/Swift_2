//
//  ImageViewController.swift
//  sem2
//
//  Created by sfincks on 18.03.2024.
//

import Foundation
import UIKit

class ImageViewController: UIViewController{
    
    private var imageView = UIImageView()
    
    init(image: UIImage){
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }
    
    private func setupViews(){
        view.addSubview(imageView)
        setupConstraints()
    }
    
    private func setupConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width/2),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
            
        ])
    }
}

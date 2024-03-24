//
//  ViewController.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        
        setupViews()
    }
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "ChatApp"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .blue
        return label
    }()
    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.backgroundColor = .blue
        return button
    }()
    
    private func setupViews(){
        view.addSubview(label)
        view.addSubview(button)
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width/2),
            label.heightAnchor.constraint(equalToConstant: view.frame.size.width/4),
            
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: view.frame.size.width/6),
            button.heightAnchor.constraint(equalToConstant: view.frame.size.width/8),
            
        
        ])
    }
    
}
private extension ViewController{
    
    @objc func tap(){
        navigationController?.pushViewController(FriendsMenu(), animated: true)
    }
    
}

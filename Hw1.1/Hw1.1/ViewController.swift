//
//  ViewController.swift
//  Hw1.1
//
//  Created by sfincks on 07.03.2024.
//

import UIKit

class ViewController: UIViewController {
//    private var label = UILabel()
//    private var button = UIButton()
    private var isTap: Bool = false
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "my first app"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .blue
        return label
    }()
    private var button: UIButton = {
        var button = UIButton()
        button.setTitle("Перейти на новый экран", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        button.backgroundColor = .blue
        return button
    }()
    private var button1: UIButton = {
        var button = UIButton()
        button.setTitle("Изменить цвет экрана", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        button1.addTarget(self, action: #selector(tap1), for: .touchUpInside)
        setupViews()
//        makelabel()
//        makebutton()
    }
    private func setupViews(){
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(button1)
        setupConstraints()
    }
    private func setupConstraints(){
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width/1.5),
            label.heightAnchor.constraint(equalToConstant: view.frame.size.width/4),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button1.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
    }
    @objc func tap(){
        navigationController?.pushViewController(NewViewController(), animated: true)
    }
    @objc func tap1(){
        isTap.toggle()
        if isTap{
            view.backgroundColor = .yellow
        } else {
            view.backgroundColor = .white
        }
    }
//    private func makelabel() {
//        label.text = "my first app"
//        label.textAlignment = .center
//        label.textColor = .white
//        label.backgroundColor = .blue
//    }
//    private func makebutton(){
//        button.setTitle("Перейти на новый экран", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = .blue
//    }
}


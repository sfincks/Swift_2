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
        label.text = "My app label"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .blue
        return label
    }()
    private var label1: UILabel = {
        let label = UILabel()
        label.text = "Авторизация"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .blue
        return label
    }()
    private var textField1: UITextField = {
        let textfield = UITextField()
        textfield.textAlignment = .center
        textfield.textColor = .black
        textfield.backgroundColor = .white
        textfield.placeholder = "Логин"
        textfield.borderStyle = .bezel
        return textfield
    }()
    private var textField2: UITextField = {
        let textfield = UITextField()
        textfield.textAlignment = .center
        textfield.textColor = .black
        textfield.backgroundColor = .white
        textfield.placeholder = "Пароль"
        textfield.borderStyle = .bezel
        return textfield
    }()
    private var button: UIButton = {
        var button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        button.backgroundColor = .blue
        return button
    }()
    
//    private var button1: UIButton = {
//        var button = UIButton()
//        button.setTitle("Изменить цвет экрана", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = .blue
//        return button
//    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
//        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
//        button1.addTarget(self, action: #selector(tap1), for: .touchUpInside)
        setupViews()
//        makelabel()
//        makebutton()
    }
    private func setupViews(){
        view.addSubview(label)
        view.addSubview(label1)
        view.addSubview(textField1)
        view.addSubview(textField2)
        view.addSubview(button)
//        view.addSubview(button1)
        setupConstraints()
    }
    private func setupConstraints(){
        label.translatesAutoresizingMaskIntoConstraints = false
        label1.translatesAutoresizingMaskIntoConstraints = false
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField2.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
//        button1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width/1.5),
            label.heightAnchor.constraint(equalToConstant: view.frame.size.width/4),
            
            label1.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 30),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width/1.8),
            label1.heightAnchor.constraint(equalToConstant: view.frame.size.width/6),
            
            textField1.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 15),
            textField1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textField1.heightAnchor.constraint(equalToConstant: view.frame.size.width/8),
            //ненавижу фронтенд)))))
            textField2.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 15),
            textField2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textField2.heightAnchor.constraint(equalToConstant: view.frame.size.width/8),
            
            button.topAnchor.constraint(equalTo: textField2.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
//            button1.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
//            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
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


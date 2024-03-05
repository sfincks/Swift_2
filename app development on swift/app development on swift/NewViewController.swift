
//  NewViewController.swift
//  app development on swift
//
//  Created by sfincks on 05.03.2024.
//
import UIKit
import Foundation

class NewViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    func presentController(){
        let newViewController = NewViewController()
        present(newViewController,animated: true)
    }
    
}

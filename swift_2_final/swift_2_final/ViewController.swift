//
//  ViewController.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

//    var webView: WKWebView!
    
//    private lazy var webView: WKWebView = {
//        let webView = WKWebView()
//        webView.navigationDelegate = self
//        return webView
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
//        webView = WKWebView(frame: view.bounds)
//        webView.navigationDelegate = self
//        view.addSubview(webView)

//        let url = URL(string: "https://oauth.vk.com/authorize?client_id=1&redirect_uri=https://oauth.vk.com/blank.html&display=mobile")
//        let request = URLRequest(url: url!)
//        webView.load(request)
        button.addTarget(self, action: #selector(PhotoTap), for: .touchUpInside)

        setupViews()
    }
    
//    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
//        guard let url = navigationResponse.response.url,url.path == "/blank.html", let fragment = url.fragment else {
//            decisionHandler(.allow)
//            return
//        }
//        let params = fragment.components(separatedBy: "&").map {$0.components(separatedBy: "=")}.reduce([String:String]()){result,param in
//            var dict = result
//            let key = param[0]
//            let value = param[1]
//            dict[key] = value
//            return dict
//        }
//        let token = params["access_token"]
//        let userID = params["user_id"]
//        print(token)
//        print(userID)
//        decisionHandler(.cancel)
//        webView.removeFromSuperview()
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
//
//
//        setupViews()
//    }
//
    private var label: UILabel = {
        let label = UILabel()
        label.text = "ChatApp"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .blue
        return label
    }()
//
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.backgroundColor = .blue
        return button
    }()
//
    private func setupViews(){
        view.addSubview(label)
        view.addSubview(button)

        setupConstraints()
    }
//
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
//
}
private extension ViewController{

    @objc func tap(){
        navigationController?.pushViewController(FriendsMenu(), animated: true)
    }
//    @objc func AuthTap(){
//        navigationController?.pushViewController(AuthPage(), animated: true)
//    }

}
private extension ViewController {
    @objc func FriendTap(){
            navigationController?.pushViewController(FriendsMenu(), animated: true)
        }
        @objc func GroupTap(){
            navigationController?.pushViewController(GroupsMenu(), animated: true)
        }
    // Нужно обязательно указать лэйаут для collectionView
        @objc func PhotoTap(){
            navigationController?.pushViewController(PhotosMenu(collectionViewLayout: UICollectionViewFlowLayout()), animated: true)
        }
}


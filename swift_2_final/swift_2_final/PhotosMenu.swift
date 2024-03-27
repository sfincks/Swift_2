//
//  PhotosMenu.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import Foundation
import UIKit

class PhotosMenu: UICollectionViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(PhotosMenuBase.self, forCellWithReuseIdentifier: "Cell")
//        title = "Groups"
//        navigationController?.navigationBar.tintColor = .black
//        navigationController?.navigationBar.barTintColor = .purple
//        button1.addTarget(self, action: #selector(FriendTap), for: .touchUpInside)
//        button2.addTarget(self, action: #selector(GroupTap), for: .touchUpInside)
//        button3.addTarget(self, action: #selector(PhotoTap), for: .touchUpInside)
//        setupViews()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
        
        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PhotosMenuBase
            
            return cell
        }
    }
//   
    
   
private extension PhotosMenu {
    @objc func FriendTap(){
            navigationController?.pushViewController(FriendsMenu(), animated: true)
        }
        @objc func GroupTap(){
            navigationController?.pushViewController(GroupsMenu(), animated: true)
        }
//        @objc func PhotoTap(){
//            let controller = PhotosMenu(collectionViewLayout: UICollectionViewFlowLayout())
//            navigationController?.pushViewController(controller, animated: true)
//        }
}

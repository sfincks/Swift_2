//
//  CollectionViewController.swift
//  sem2
//
//  Created by sfincks on 18.03.2024.
//

import Foundation
import UIKit

class CollectionViewController:UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        guard let cell = cell as? CustomCollectionViewCell else{
            return UICollectionViewCell()
        }
        cell.tap = {[weak self] image in
            self?.navigationController?.pushViewController(ImageViewController(image:image), animated: true)
        }
        return cell
    }
}

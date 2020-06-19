//
//  SecondViewController.swift
//  Galactic Guidebook
//
//  Created by Keegan Brown on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return globalItems.count
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! GalacticCollectionViewCell
        let item = globalItems[indexPath.item]
        cell.label!.text = item.name
        cell.imageView!.image = item.image!
        cell.backgroundColor = UIColor.green
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.allowsSelection = true
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }
  


}


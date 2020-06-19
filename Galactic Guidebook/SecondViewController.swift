//
//  SecondViewController.swift
//  Galactic Guidebook
//
//  Created by Keegan Brown on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

//Be sure to declare delegate and data source. Let xCode stub out the methods for you.
class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //Outlet for collection view
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    //Specifies how many items will be in the collection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return globalPlanets.count
    }
    
    //This creates each collection view cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Uses a reusable cell. Casts the cell as a GalacticCollectionViewCell which is the custom
        //  collection view cell class. Be sure to carefully set identifer and set the cell in the
        //  story board to the GalacticCollectionViewCell class.
        //  (Middle icon on right menu under custom class when cell is selected in storyboard)
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! GalacticCollectionViewCell
        //Gets the item to put in the cell
        let item = globalPlanets[indexPath.item]
        //Sets label text and image
        cell.label!.text = item.name
        cell.imageView!.image = item.image!
        //returns completed cell
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.allowsSelection = true
        //Sets up the delegate and data source
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    
        
    }
  


}


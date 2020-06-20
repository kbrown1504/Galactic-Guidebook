//
//  TestViewController.swift
//  Galactic Guidebook
//
//  Created by Carly Cameron on 6/20/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

class TestViewController: HorizontalPeekingPagesCollectionViewController {
    
    var planetToSend: Planet!
    
    override func calculateSectionInset() -> CGFloat {
           return 20
       }
    
    //Specifies how many items will be in the collection
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(globalPlanets.count)
        return globalPlanets.count
    }
    
    //This creates each collection view cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Uses a reusable cell. Casts the cell as a GalacticCollectionViewCell which is the custom
        //  collection view cell class. Be sure to carefully set identifer and set the cell in the
        //  story board to the GalacticCollectionViewCell class.
        //  (Middle icon on right menu under custom class when cell is selected in storyboard)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! PlanetCell
        //Gets the item to put in the cell
        let item = globalPlanets[indexPath.item]
        //Sets label text and image
        cell.planetNameLabel.text = item.name?.uppercased()
        cell.image.image = item.image!
        //returns completed cell
        return cell
    }

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! PlanetCell
        collectionView.deselectItem(at: indexPath, animated: true)
        planetToSend = globalPlanets[indexPath.item]
        
        performSegue(withIdentifier: "segueToDetail", sender: cell)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! DetailViewController
            dvc.planet = planetToSend
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

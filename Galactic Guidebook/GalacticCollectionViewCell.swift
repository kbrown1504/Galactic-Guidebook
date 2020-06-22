//
//  GalacticCollectionViewCell.swift
//  Galactic Guidebook
//
//  Created by Keegan Brown on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

/*
 Creating the custom cell is a bit difficult, but I'll try to describe the process here.
 1. Create this file and then the outlets.
 2. Set up your scroll view to have a reusable cell.
 3. Drag an imageView and Label into the content view of the reusable cell.
 4. Connect the outlets.
 5. Confirm that your tableView cell in the storyboard has its custom class set to GalactiCollectionViewCell.
 */


//Custom Collection View Controller
class GalacticCollectionViewCell: UICollectionViewCell {
    //Outlet for imageView and label
    @IBOutlet var imageView : UIImageView!
    @IBOutlet var label : UILabel!
    
}

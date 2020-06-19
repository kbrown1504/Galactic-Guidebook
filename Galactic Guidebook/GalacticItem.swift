//
//  GalacticItem.swift
//  Galactic Guidebook
//
//  Created by Keegan Brown on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import Foundation
import UIKit

var globalItems : [GalacticItem] = []

class GalacticItem {
    
    var name : String?
    var textDescription : String?
    var image : UIImage?
    
    init(n: String, td: String, i: UIImage) {
        name = n
        textDescription = td
        image = i
    }
    
}

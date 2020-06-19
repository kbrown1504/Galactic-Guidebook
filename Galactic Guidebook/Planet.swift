//
//  GalacticItem.swift
//  Galactic Guidebook
//
//  Created by Keegan Brown on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import Foundation
import UIKit

//Declares a global array of items
var globalPlanets : [Planet] = []

//Class for storing items
class Planet {
    //Define variables
    var name : String?
    //Under 40 chars?
    var shortDescription : String?
    var image : UIImage?
    var distFromSun : Double?
    var lengthOfYear : Double?
    var diameter : Int?
    var funFact : String?
    //Paragraph form
    var longDescription : String?
    var link : URL?
    
    //This is the constructor for the Object
    init(name: String, shortDesc: String, img: UIImage, distanceFromSun: Double, lengthOfYr: Double,
         diam: Int, fact: String, longDesc: String, webLink: URL) {
        self.name = name
        shortDescription = shortDesc
        image = img
    }
    
}

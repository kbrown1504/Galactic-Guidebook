//
//  DetailViewController.swift
//  Galactic Guidebook
//
//  Created by Carly Cameron on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var circlePlanetImage: UIImageView!
    @IBOutlet weak var nameOfPlanetLabel: UILabel!
    @IBOutlet weak var longDescriptionLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var yearLengthLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    
    var planet: Planet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        //set the labels to the correct fields of the planet
        //the ?? means the value on the right is the default if the value on the right is nil
        funFactLabel.text = "\(planet.funFact ?? "fun fact")"
        yearLengthLabel.text = "\(planet.lengthOfYear ?? 1) days in a year"
        diameterLabel.text = "\(planet.diameter ?? 1) miles in diameter"
        nameOfPlanetLabel.text = planet.name
        distanceLabel.text = "\(planet.distFromSun ?? 1.2) miles from sun"
        longDescriptionLabel.text = planet.longDescription
        circlePlanetImage.image = planet.image
        
        
       
    }
    

    @IBAction func onLinkPressed(_ sender: Any) {
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

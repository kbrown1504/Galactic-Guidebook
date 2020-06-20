//
//  DetailViewController.swift
//  Galactic Guidebook
//
//  Created by Carly Cameron on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameOfPlanetLabel: UILabel!
    @IBOutlet weak var longDescriptionLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var yearLengthLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        funFactLabel.text = "A really fun fact"
        yearLengthLabel.text = "1000 days"
        diameterLabel.text = "212345 "
        nameOfPlanetLabel.text = " Pluto "
        distanceLabel.text = "1234567 miles"
        longDescriptionLabel.text = "https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly. https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly. https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly.https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly. https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly. https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly. https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly. https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly. https://github.com/ccameron1/PizzaHunter.git some really long description that will make the scroon get bigger. This will be extra long to prove that it scrolls really goodly.  "
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

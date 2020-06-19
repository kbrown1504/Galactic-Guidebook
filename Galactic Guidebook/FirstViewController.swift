//
//  FirstViewController.swift
//  Galactic Guidebook
//
//  Created by Keegan Brown on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

//Be sure to set up delegate and data source. Allow xCode to stub out the methods for you.
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet for table view
    @IBOutlet weak var myTableView: UITableView!
    
    //Specifies the number of items in the table view.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return globalPlanets.count
    }
    
    //Creates the cells in the table view.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Uses cell from storyboard. Be sure to carefully set identidier.
        let cell = myTableView.dequeueReusableCell(withIdentifier: "Cell")
        //Designates item to add to the cell
        let itemToAdd = globalPlanets[indexPath.row]
        //Sets label, image, and subtitle
        cell?.textLabel?.text = itemToAdd.name!
        cell?.imageView?.image = itemToAdd.image!
        cell?.detailTextLabel?.text = itemToAdd.shortDescription
        
        //Returns completed cell
        return cell!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Creates items for now and adds them to globalItems
        let item = Planet(name: "Pluto", shortDesc: "Dwarf Planet", img: UIImage(named: "pluto")!, distanceFromSun: 5874000000, lengthOfYr: 90520, diam: 2372, fact: "It not actually a planet!", longDesc: "Pluto (minor planet designation: 134340 Pluto) is an icy dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It was the first and the largest Kuiper belt object to be discovered.\n\nPluto was discovered by Clyde Tombaugh in 1930 and declared to be the ninth planet from the Sun. After 1992, its status as a planet was questioned following the discovery of several objects of similar size in the Kuiper belt. In 2005, Eris, a dwarf planet in the scattered disc which is 27% more massive than Pluto, was discovered. This led the International Astronomical Union (IAU) to define the term \"planet\" formally in 2006, during their 26th General Assembly. That definition excluded Pluto and reclassified it as a dwarf planet. \n\nIt is the ninth-largest and tenth-most-massive known object directly orbiting the Sun. It is the largest known trans-Neptunian object by volume but is less massive than Eris. Like other Kuiper belt objects, Pluto is primarily made of ice and rock and is relatively small—one-sixth the mass of the Moon and one-third its volume. It has a moderately eccentric and inclined orbit during which it ranges from 30 to 49 astronomical units or AU (4.4–7.4 billion km) from the Sun. This means that Pluto periodically comes closer to the Sun than Neptune, but a stable orbital resonance with Neptune prevents them from colliding. Light from the Sun takes 5.5 hours to reach Pluto at its average distance (39.5 AU).\n\nPluto has five known moons: Charon (the largest, with a diameter just over half that of Pluto), Styx, Nix, Kerberos, and Hydra. Pluto and Charon are sometimes considered a binary system because the barycenter of their orbits does not lie within either body.\n\nThe New Horizons spacecraft performed a flyby of Pluto on July 14, 2015, becoming the first ever, and to date only, spacecraft to do so. During its brief flyby, New Horizons made detailed measurements and observations of Pluto and its moons. In September 2016, astronomers announced that the reddish-brown cap of the north pole of Charon is composed of tholins, organic macromolecules that may be ingredients for the emergence of life, and produced from methane, nitrogen and other gases released from the atmosphere of Pluto and transferred 19,000 km (12,000 mi) to the orbiting moon.", webLink: URL(string: "https://space-facts.com/pluto/")!)
        globalPlanets.append(item)
        globalPlanets.append(item)
        globalPlanets.append(item)
        globalPlanets.append(item)
        globalPlanets.append(item)
        globalPlanets.append(item)
        
        //Sets delegate and data source
        myTableView.dataSource = self
        myTableView.delegate = self
    }

}


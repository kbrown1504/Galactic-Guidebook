//
//  FirstViewController.swift
//  Galactic Guidebook
//
//  Created by Keegan Brown on 6/18/20.
//  Copyright © 2020 Keegan Brown. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return globalItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "Cell")
        let itemToAdd = globalItems[indexPath.row]
        cell?.textLabel?.text = itemToAdd.name!
        cell?.imageView?.image = itemToAdd.image!
        cell?.detailTextLabel?.text = itemToAdd.textDescription
        
        return cell!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = GalacticItem(n: "Pluto", td: "Not a planet", i: UIImage(named: "pluto")!)
        let item2 = GalacticItem(n: "Earth", td: "Home", i: UIImage(named: "pluto")!)
        let item3 = GalacticItem(n: "Star", td: "Random", i: UIImage(named: "pluto")!)
        globalItems.append(item)
        globalItems.append(item2)
        globalItems.append(item3)
        
        myTableView.dataSource = self
        myTableView.delegate = self
    }

}


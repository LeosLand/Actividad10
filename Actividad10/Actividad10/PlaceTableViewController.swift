//
//  PlaceTableViewController.swift
//  Actividad10
//
//  Created by Alumno IDS on 13/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class PlaceTableViewController: UITableViewController  {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "LabelCell")
    }

    var place = ["Vaticano","Córdoba","Albaicia","Córdoba2","Barcelona","Córdoba3","Beijing","Córdoba4","Canberra","DellaHuff","Dubrovnia","Perú","Petra","Sydney"]

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return place.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        let placeName = place[indexPath.row]
        cell.textLabel?.text = placeName
        cell.detailTextLabel?.text = "comentario"
        cell.imageView?.image = UIImage(named: placeName)
        return cell
    }
}

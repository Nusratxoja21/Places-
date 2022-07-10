//
//  MainViewController.swift
//  Places
//
//  Created by Nusrat Ganiyev on 10/07/22.
//  Copyright © 2022 Nusrat Ganiyev. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    
    let restaurantNames = [
    "Burger Heroes","Kitchen","Bonsai","Dasturxon",
    "Indokitay","X.O","Balkan Grill","Sherlock Holmes",
    "Speak Easy","Morris Pub","Vkusnie Istorii",
    "Classic","Love&Life","Wok","Bochka"
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true

        return cell
    }
  

    // MARK - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
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

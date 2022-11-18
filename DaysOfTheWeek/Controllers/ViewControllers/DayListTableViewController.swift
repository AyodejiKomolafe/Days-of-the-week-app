//
//  DayListTableViewController.swift
//  DaysOfTheWeek
//
//  Created by Kvng Eko on 11/13/22.
//

import UIKit

class DayListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    
    // when you want only one section you can delete the function below and you will get the default amount of section which is 1 section, you can however return 1 if 1 section is what you want
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DayController.daysOfTheWeek.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)

        let day = DayController.daysOfTheWeek[indexPath.row]
        
        cell.textLabel?.text = day.name
        

        return cell
    }
    


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? DayDetailViewController else{return}
            
            let dayToSend = DayController.daysOfTheWeek[indexPath.row]
            
            destination.day = dayToSend
            
        }
    }

}

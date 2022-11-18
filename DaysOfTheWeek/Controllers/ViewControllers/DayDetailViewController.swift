//
//  DayDetailViewController.swift
//  DaysOfTheWeek
//
//  Created by Kvng Eko on 11/13/22.
//

import UIKit

class DayDetailViewController: UIViewController {
    //MARK: - Outlets
    
    @IBOutlet var dayNameLabel: UILabel!
    @IBOutlet var dayOriginLabel: UILabel!
    
    //MARK: - Properties
    var day : Day? 
    
    
    //MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        
    }
    
    func updateViews() {
        guard let day = day else {return}
        dayNameLabel.text = day.name
        dayOriginLabel.text = day.origin
        
    }
    

}

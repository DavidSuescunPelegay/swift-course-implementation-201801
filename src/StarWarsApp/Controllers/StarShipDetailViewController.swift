//
//  StarShipDetailViewController.swift
//  StarWarsApp
//
//  Created by user909200 on 1/13/18.
//  Copyright © 2018 user909200. All rights reserved.
//

import UIKit

class StarShipDetailViewController: UIViewController {

    var name = "";
    var model = "";
    var manufacturer = "";
    var cost = "";
    var starshipClass = "";
    
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var modelLabel: UILabel?
    @IBOutlet weak var manufacturerLabel: UILabel?
    @IBOutlet weak var costLabel: UILabel?
    @IBOutlet weak var starshipClassLabel: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        nameLabel?.text = name;
        modelLabel?.text = model;
        manufacturerLabel?.text = manufacturer;
        costLabel?.text = cost;
        starshipClassLabel?.text = starshipClass;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

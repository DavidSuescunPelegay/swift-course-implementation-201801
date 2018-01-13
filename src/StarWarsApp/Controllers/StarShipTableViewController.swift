//
//  StarShipTableViewController.swift
//  StarWarsApp
//
//  Created by user909200 on 1/13/18.
//  Copyright © 2018 user909200. All rights reserved.
//

import UIKit

class StarShipTableViewController: UITableViewController {
    
    let STARSHIPS_URL = "https://swapi.co/api/starships/";
    let TABLE_SECTIONS = 1;
    var starShipsArray = [StarShipModel]();
    var starShipDetail : StarShipModel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getJson();
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return TABLE_SECTIONS
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return starShipsArray.count;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "starShipCell", for: indexPath);
        let starShip = starShipsArray[indexPath.row];
        cell.textLabel?.text = starShip.name;
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "StarShipDetailSegue"){
            let detailVC = segue.destination as! StarShipDetailViewController;
            detailVC.name = starShipDetail.name;
            detailVC.model = starShipDetail.model;
            detailVC.manufacturer = starShipDetail.manufacturer;
            detailVC.cost = starShipDetail.cost;
            detailVC.starshipClass = starShipDetail.starshipClass;
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        starShipDetail = starShipsArray[indexPath.row];
        self.performSegue(withIdentifier: "StarShipDetailSegue", sender: self)
    }
 

    func getJson(){
        // Creating a JSON
        let url = NSURL(string: STARSHIPS_URL)
        
        URLSession.shared.dataTask(with : (url as URL?)!, completionHandler: {(data, response, error) -> Void in
            if let jsonObj = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary{
                print(jsonObj!.value(forKey: "results")!)
                
                if let starShipsArray = jsonObj!.value(forKey: "results") as? NSArray {
                    for starShip in starShipsArray{
                        if let starShipDict = starShip as? NSDictionary{
                            let name = starShipDict.value(forKey: "name");
                            let model = starShipDict.value(forKey: "model");
                            let manufacturer = starShipDict.value(forKey: "manufacturer");
                            let cost = starShipDict.value(forKey: "cost_in_credits");
                            let starshipClass = starShipDict.value(forKey: "starship_class");
                            
                            let starShipElement = StarShipModel(name:name as! String, model:model as! String, manufacturer:manufacturer as! String, cost:cost as! String, starshipClass:starshipClass as! String);
                            
                            self.starShipsArray.append(starShipElement!);
                        }
                    }
                }
                
                OperationQueue.main.addOperation({
                    self.tableView.reloadData();
                })
            }
        }).resume()
    }
    
}

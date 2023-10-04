//
//  fbTableViewController.swift
//  facebook
//
//  Created by ASWIN A on 04/10/23.
//

import UIKit

class fbTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    var arr = [["BayMax"], ["Friends", "Events", "Groups", "CMU", "Town Hall", "Instant Games", "Settings"]]
    var img = [["my"],["friends", "event", "groups", "cmu", "hall", "game", "settings"]]
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.count == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "profile", for: indexPath) as! userfbTableViewCell
            
            cell.name.text = arr[indexPath.section][indexPath.row]
            cell.img.image = UIImage(named: img[indexPath.section][indexPath.row])

            return cell
            
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "settings", for: indexPath) as! settingsfbTableViewCell
            cell.setting.text = arr[indexPath.section][indexPath.row]
            cell.icon.image = UIImage(named: img[indexPath.section][indexPath.row])
            return cell
            
            }
        }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "userVC") as! userViewController
        
        vc.name = arr[indexPath.section][indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

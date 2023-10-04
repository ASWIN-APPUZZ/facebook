//
//  userViewController.swift
//  facebook
//
//  Created by ASWIN A on 04/10/23.
//

import UIKit

class userViewController: UIViewController {

    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var uimage: UIImageView!
    
    
    var name = ""
    var img = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        username.text = "Name: \(name)"
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

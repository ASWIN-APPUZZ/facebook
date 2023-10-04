//
//  ViewController.swift
//  facebook
//
//  Created by ASWIN A on 04/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uname: UITextField!
    
    @IBOutlet weak var pwd: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func lofin(_ sender: Any) {
        
        let username = uname.text!
        let password = pwd.text!
        
        if (username == "BayMax" && password == "1234") {
            
        
            let vc = self.storyboard?.instantiateViewController(identifier: "fbTableVC") as! fbTableViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else{
            let alert = UIAlertController(title: "Alert", message: "User name dosent match ", preferredStyle: .alert)
            present(alert, animated: true)
            
            let cancelbtn = UIAlertAction(title: "Cancel", style: .cancel) {(action) in print("Cancel button is clicked")}
            
            alert.addAction(cancelbtn)
        }
        
    }
    
}


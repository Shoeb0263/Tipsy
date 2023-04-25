//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Shoeb's Macbook on 03/04/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result = "0.0"
    var tip = 10
    var split = 2
  override func viewDidLoad() {
        super.viewDidLoad()
      
      totalLabel.text = result
        settingsLabel.text = "Split between \(split) people,with \(tip)% tip."
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goBack", sender: self)
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

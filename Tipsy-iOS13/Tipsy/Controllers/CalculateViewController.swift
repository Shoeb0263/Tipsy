

import UIKit

class CalculateViewController: UIViewController {
  
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.0
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        sender.isSelected = true
        if sender.currentTitle! == "10%"{
            tip=0.1
            }
        else if sender.currentTitle! == "20%"{
            tip=0.2
            }
        else {
            tip=0
            }}
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f" , sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal * (1+tip) / Double(numberOfPeople)
             finalResult = String(format: "%.2f", result)
        
        }
        self.performSegue(withIdentifier: "goToResult", sender: self)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        if segue.identifier == "goToResult" {
            
            //Get hold of the instance of the destination VC and type cast it to a ResultViewController.
            let destinationVC = segue.destination as! ResultViewController
            
            //Set the destination ResultsViewController's properties.
            destinationVC.result = finalResult
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = numberOfPeople
        }
    }
        //If the currently triggered segue is the "goToResults" segue.
           
  
}


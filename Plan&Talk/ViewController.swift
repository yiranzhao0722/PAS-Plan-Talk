//
//  ViewController.swift
//  Plan&Talk
//
//  Created by iguest on 3/10/19.
//  Copyright © 2019 Patient as Safeguard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    //Mark:Properties
    @IBOutlet weak var actionNameTextFIeld: UITextField!
    
    @IBOutlet weak var whoFromSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var whenPicker: UIPickerView!
    var whenPickerData: [String] = [String]()
    
    @IBOutlet weak var categorySegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var saveDescriptionLabel: UILabel!
    @IBOutlet weak var fromWhoLabel: UILabel!
    @IBOutlet weak var whenLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        actionNameTextFIeld.delegate = self
        
        self.whenPicker.delegate = self
        self.whenPicker.dataSource = self
        whenPickerData = ["When I\'m in the hospital", "When I go home", "Someday"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Mark: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        saveDescriptionLabel.text = actionNameTextFIeld.text
    }
    
    
    //Mark: UIPickerDataSource
    //Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return whenPickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        whenLabel.text = whenPickerData[row]
        return whenPickerData[row]
    }
    
    //Mark: Action
    @IBAction func saveActionButton(_ sender: UIButton) {
    }
    
    @IBAction func fromWhoIndexChange(_ sender: UISegmentedControl) {
        switch whoFromSegmentedControl.selectedSegmentIndex
        {
        case 0:
            fromWhoLabel.text = "from care team"
        case 1:
            fromWhoLabel.text = "from patient"
        default:
            break
        }
    }
    
    @IBAction func categoryIndexChange(_ sender: UISegmentedControl) {
        switch categorySegmentedControl.selectedSegmentIndex {
        case 0:
            categoryLabel.text = "💊"
        case 1:
            categoryLabel.text = "🍹"
        case 2:
            categoryLabel.text = "🥣"
        case 3:
            categoryLabel.text = "👟"
        case 4:
            categoryLabel.text = "📝"
        case 5:
            categoryLabel.text = "😊"
        default:
            break
        }
    }
    
}


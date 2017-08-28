//
//  ViewController.swift
//  MiraclePills
//
//  Created by Wilman Garcia De Leon on 8/21/17.
//  Copyright © 2017 vengapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var stateBtnPicker: UIButton!
    
    
    
 
    
    let states = ["Alaska","Arkansas", "Alabama", "San Francisco", "Yew York"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self;
        statePicker.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        
//        countryLabel.isHidden = true
//        zipCodeLabel.isHidden = true
//        textFieldCountry.isHidden = true
//        textFieldZipCode.isHidden = true
        
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateBtnPicker.setTitle(states[row], for: UIControlState())//UIControlState.normal
        statePicker.isHidden = true
        
//        countryLabel.isHidden = false
       
        
    }

}


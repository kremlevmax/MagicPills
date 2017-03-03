//
//  ViewController.swift
//  MiraclePills
//
//  Created by Сервис on 03/03/2017.
//  Copyright © 2017 Kremlev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var buttonOfState: UIButton!

    @IBOutlet weak var pickerOfState: UIPickerView!
    
    let states = ["Alaska", "Arizona", "Texas", "California", "Maimi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerOfState.dataSource = self
        pickerOfState.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func buttonOfStatePressed(_ sender: UIButton) {
        pickerOfState.isHidden = false
        
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
        buttonOfState.setTitle(states[row], for: UIControlState.normal)
        pickerOfState.isHidden = true
    }

}


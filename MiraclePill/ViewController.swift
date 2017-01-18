//
//  ViewController.swift
//  MiraclePill
//
//  Created by Luis Guzman on 1/9/17.
//  Copyright © 2017 Luis Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var miraclePillView: UIImageView!
    @IBOutlet weak var miraclePillLbl: UILabel!
    @IBOutlet weak var miraclePillCostLbl: UILabel!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var streetAddressLbl: UILabel!
    @IBOutlet weak var streetAddressTxt: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTxt: UITextField!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var successView: UIImageView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIButton!
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxt.isHidden = true
        buyNowBtn.isHidden = true
        statePicker.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
    
        miraclePillView.isHidden = true
        miraclePillLbl.isHidden = true
        miraclePillCostLbl.isHidden = true
        dividerView.isHidden = true
        nameLbl.isHidden = true
        nameTxt.isHidden = true
        streetAddressLbl.isHidden = true
        streetAddressTxt.isHidden = true
        cityLbl.isHidden = true
        cityTxt.isHidden = true
        stateLbl.isHidden = true
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxt.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        buyNowBtn.isHidden = true
        successView.isHidden = false
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
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryTxt.isHidden = false
        zipCodeLbl.isHidden = false
        zipCodeTxt.isHidden = false
        buyNowBtn.isHidden = false
    }
}


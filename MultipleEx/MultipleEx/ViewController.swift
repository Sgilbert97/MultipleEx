//
//  ViewController.swift
//  MultipleEx
//
//  Created by Savannah Gilbert on 4/12/20.
//  Copyright © 2020 Savannah Gilbert. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()


class ViewController: UIViewController {

    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var theSwitch: UILabel!
    
    @IBOutlet weak var theSlider: UILabel!
    
    @IBOutlet weak var thePicker: UILabel!
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myName: UITextField!
    
    
    @IBAction func myButton(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    
    @IBOutlet weak var navView: UIView!
    
    @IBAction func clickMenu(_ sender: UIBarButtonItem) {
        if(navView.isHidden) {
            navView.isHidden = false
        }
        else {
            navView.isHidden = true
        }
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
          navView.isHidden = true
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    myLabel.text = "Enter Name"
    }
    
    override func viewWillAppear(_ animated: Bool){
    theSwitch.text = "Switch: \(global.switchVar)"
    theSlider.text = "Slider: \(global.sliderVar)"
        thePicker.text = "Picker: \(global.pickerVar)"
    }


}


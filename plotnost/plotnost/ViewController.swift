//
//  ViewController.swift
//  plotnost
//
//  Created by Stacy on 17.04.21.
//

import UIKit

let data = ["Алюминий":2700, "Магний":1740, "Свинец":11370, "Серебро":10500, "Вода":1000]

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var materialLabel: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var volumeTextField: UITextField!
    @IBOutlet weak var materialPicker: UIPickerView!
    @IBOutlet weak var okLabel: UILabel!
    
    var materials = MaterialsRepository.init(with: data).getMaterials()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        materialPicker.delegate = self
        materialPicker.isHidden = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapFunction(sender:)))
        materialLabel.addGestureRecognizer(tap)
        materialLabel.isUserInteractionEnabled = true
    }
    
//MARK: UITapGestureRecognizer
    
   @objc func tapFunction(sender:UITapGestureRecognizer) {
        materialPicker.isHidden = !materialPicker.isHidden
    }
    
//MARK: UIPickerViewDelegate

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return materials.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return materials[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        materialLabel.text = materials[row].name
        
        guard let volume =  Int(volumeTextField.text ?? "") else { return }
        guard let weight =  Int(weightTextField.text ?? "") else { return }
        
        if (weight/volume == materials[row].density) {
            okLabel.text = "OK"
            okLabel.backgroundColor = UIColor.green
        } else {
            okLabel.text = "Wrong"
            okLabel.backgroundColor = UIColor.red
        }
    }
    
}


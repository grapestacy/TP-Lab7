//
//  ViewController.swift
//  calories
//
//  Created by Stacy on 17.04.21.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var sexSegment: UISegmentedControl!
    @IBOutlet weak var trainingsSegment: UISegmentedControl!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func countTapped(_ sender: Any) {
        var isFemale: Bool
        var BMR: Float
        var AMR: Float
        
        guard let age =  Float(ageTextField.text ?? "") else { return }
        guard let height =  Float(heightTextField.text ?? "") else { return }
        guard let weight =  Float(weightTextField.text ?? "") else { return }
        
        
        switch sexSegment.selectedSegmentIndex {
        case 1:
            isFemale = true
        default:
            isFemale = false
        }
        
        switch trainingsSegment.selectedSegmentIndex {
        case 0:
            AMR = 1.2
        case 1:
            AMR = 1.375
        case 2:
            AMR = 1.55
        case 3:
            AMR = 1.725
        default:
            return
        }
        
        if isFemale {
            BMR = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age)
        } else {
            BMR = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age)
        }
        
        let kcal = BMR*AMR
        
        let imt = weight / ((height/100)*(height/100))
        
        resultLabel.text = "вы должны потреблять \(kcal) килокалорий для поддержания веса. Индекс массы тела \(imt)."
    }
    

    
    
}

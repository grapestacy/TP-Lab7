//
//  ViewController.swift
//  Background
//
//  Created by Stacy on 16.04.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundSwitch: UISwitch!
    @IBOutlet weak var backgroundIndicator: UILabel!
    
    
    @IBAction func `switch`(_ sender: UISwitch) {

        if (sender.isOn == true) {
            backgroundIndicator.text = "Now the first background"
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
        }
        else {
            backgroundIndicator.text = "And now the second one"
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundIndicator.textColor = .lightText
        backgroundIndicator.textAlignment = .center
        backgroundIndicator.text = "Switch me"
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
        
    }
    
    
}


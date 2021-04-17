//
//  ViewController.swift
//  W&W
//
//  Created by Stacy on 16.04.21.
//

import UIKit
let cities = [ City(name: "Vorkuta", authorName: "Natalia Stasina", authorBookName: "Mom is indulging", autorImage: "NS"),
               City(name: "Minsk", authorName: "Maksim Bahdanovich", authorBookName: "Muzyka", autorImage: "MB"),
               City(name: "Tokio", authorName: "Yukio Mishima", authorBookName: "Sun and Steel", autorImage: "YM"),
               City(name: "Brest", authorName: "Anna Margolin ", authorBookName: "Drunk from the Bitter Truth", autorImage: "AM"),
               City(name: "Nuuk", authorName: "Niviaq Korneliussen", authorBookName: "San Francisco", autorImage: "NK"),
               City(name: "Cairo", authorName: "Ahmed Shawqi", authorBookName: "The Markets of Gold", autorImage: "AS")
]

let weathers = [ Weather(temperature: -10, color: UIColor.init(named: "Vorkuta") ?? UIColor.clear),
                 Weather(temperature: 14, color: UIColor.init(named: "Minsk") ?? UIColor.clear),
                 Weather(temperature: 20, color: UIColor.init(named: "Tokio") ?? UIColor.clear),
                 Weather(temperature: 15, color: UIColor.init(named: "Brest") ?? UIColor.clear),
                 Weather(temperature: -15, color: UIColor.init(named: "Nuuk") ?? UIColor.clear),
                 Weather(temperature: 36, color: UIColor.init(named: "Cairo") ?? UIColor.clear)
]

class ViewController: UIViewController {
    
    @IBOutlet var searchButton: UIView!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }
    
    @IBAction func tapSearchButton(_ sender: Any) {
        for city in cities {
            if searchTextField.text == city.name {
                guard let index = cities.firstIndex(where: {$0.name == city.name}) else {return}
        
                let cityVC = CityViewController(nibName: "CityViewController", bundle: nil)
                cityVC.city = city
                cityVC.weather = weathers[index]
                self.present(cityVC, animated: true, completion: nil)
            }
        }
    }
    

}


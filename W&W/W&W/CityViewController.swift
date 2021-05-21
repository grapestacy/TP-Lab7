//
//  CityViewController.swift
//  W&W
//
//  Created by Stacy on 17.04.21.
//

import UIKit

class CityViewController: UIViewController {

    var city: City?
    var weather: Weather?
    
    @IBOutlet weak var imageVie: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var writer: UILabel!
    @IBOutlet weak var booklabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureLabel.text = String(weather?.temperature ?? 0) + "℃"
        temperatureLabel.textColor = weather?.color
        
        imageVie.image = UIImage.init(named: city?.autorImage ?? "")
        
        writer.text = city?.authorName ?? ""
        booklabel.text = city?.authorBookName ?? ""
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

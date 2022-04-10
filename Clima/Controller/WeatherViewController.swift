//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchFieldText: UITextField!
    
    @IBAction func searchPressed(_ sender: UIButton) {
        searchFieldText.endEditing(true)
        print(searchFieldText.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        searchFieldText.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchFieldText.endEditing(true)
        print(searchFieldText.text!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type Something"
            return false
        }
     }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchFieldText.text = ""
        searchFieldText.placeholder = "Search"
    }
}


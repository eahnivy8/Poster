//
//  ViewController.swift
//  Poster
//
//  Created by Edward Ahn on 5/27/19.
//  Copyright © 2019 EddieA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    @IBOutlet weak var bountyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bountyLabel.text = "$ \(currentValue)"
    }

    @IBAction func showAlert(_ sender: Any) {
        let message = "현상금은 \(currentValue) 입니다."
        let alert = UIAlertController(title: "hello", message: message, preferredStyle: .alert)
        let action =
            UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated:true, completion: nil)
        
        let randomNum = arc4random_uniform(10000) + 1
        currentValue = Int(randomNum)
        bountyLabel.text = "$ \(currentValue)"
        
    }
}

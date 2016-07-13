//
//  ViewController.swift
//  Funfacts
//
//  Created by Melissa Phillips on 6/17/16.
//  Copyright © 2016 Melissa Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactButton: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    let factModel = factModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor =  randomColor
        funFactButton.tintColor = randomColor
      funFactLabel.text = factModel.getRandomFact()
    }

}


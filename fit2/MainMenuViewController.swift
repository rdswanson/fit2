//
//  ViewController.swift
//  fit
//
//  Created by Ryan on 2015-01-29.
//  Copyright (c) 2015 Natazhat LLC. All rights reserved.
//

// Adding comment to check github link

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var mainMenuDate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cw = ColourWheel()
        
        // Set View Background Colour
        // view.backgroundColor = UIColor(red: 90/255.0, green: 188/255.0, blue: 181/255.0, alpha: 1.0)
        
        // Update Main Menu Date
        let menuDate = MenuDate()
        self.mainMenuDate.text = menuDate.formatDisplay()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}


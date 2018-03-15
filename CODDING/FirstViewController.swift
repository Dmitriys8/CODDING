//
//  FirstViewController.swift
//  CODDING
//
//  Created by Дмитрий Яковлев on 07.03.2018.
//  Copyright © 2018 Дмитрий Яковлев. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func writeToTextFIeld(_ sender: UIButton) {
        
        TextField.text = "\(sender.title(for: .selected)!) " + "button pressed"
    }
}


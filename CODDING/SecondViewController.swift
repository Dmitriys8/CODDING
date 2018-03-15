//
//  SecondViewController.swift
//  CODDING
//
//  Created by Дмитрий Яковлев on 07.03.2018.
//  Copyright © 2018 Дмитрий Яковлев. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var closeKeyboard: UITapGestureRecognizer!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func closeKeboard(_ sender: AnyObject) {
        loginTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Stepper: UIStepper!
    @IBOutlet weak var Slider: UISlider!
    @IBAction func changeLabelValue(_ sender: UISlider) {
        Label.text = "\(lroundf(sender.value * 100))"
        Stepper.value = Double(sender.value * 100)
    }
   
    @IBAction func changeSliderValue(_ sender: UIStepper) {
        Slider.value = Float(sender.value / 100)
        Label.text = "\(lround(sender.value))"
        
    }
    
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBAction func switchesSinchronizying(_ sender: UISwitch) {
        leftSwitch.setOn(sender.isOn, animated: true)
        rightSwitch.setOn(sender.isOn, animated: true)
    }
    
    @IBOutlet weak var Button: UIButton!
    @IBAction func hidingOfButton(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            Button.isHidden = false
        }
        else{
            Button.isHidden = true
        }
    }
    @IBAction func doSomething(_ sender: UIButton) {
        let controller = UIAlertController(title: "Are you Shure?", message: nil, preferredStyle: .actionSheet)
        let yesAction = UIAlertAction(title: "Yes, I'm sure", style: .destructive, handler: { action in
            let msg = self.loginTextField.text!.isEmpty
                ? "Everethyng is OK"
                : "Everethyng is OK, " + self.loginTextField.text!
            let controller2 = UIAlertController(title: "Something was done", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            controller2.addAction(cancelAction)
            self.present(controller2, animated: true, completion: nil)
        })
        let noAction = UIAlertAction(title: "No, I don't", style: .cancel, handler: nil)
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        if let ppc = controller.popoverPresentationController{
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
        }
        present(controller, animated: true, completion: nil)
    }
    
    
    
    
}


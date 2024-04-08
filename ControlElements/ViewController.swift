//
//  ViewController.swift
//  ControlElements
//
//  Created by Sümeyra Demirtaş on 2.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonTapped(_ button: UIButton){
        print("Button was tapped!")
        
        if toggle.isOn{
            print("Switch is on!")
        }else{
            print("Switch is off!")
        }
    }

    @IBAction func switchToggled(_ sender: UISwitch){
        if sender.isOn{
            print("The switch is on!")
        }else{
            print("The switch is off!")
        }
    }
    
    @IBAction func sliderValueChanged(_ slider: UISlider){
        print(slider.value)
    }
    
    //texti değiştiğinde haberdar olmak gerekiyor, TextChanged
    //Keyboeard üzerindeki return tuşu var. ona tıklanıp tıklanmadığını da bilmek lazım
    @IBAction func keyboardReturnKeyTapped(_ textField: UITextField){
        if let text = textField.text {
            print(text)
        }
    }
    
    @IBAction func textChanged(_ textField: UITextField){
        if let text = textField.text{
            print(text)
        }
    }
    
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer){
        let touch = sender.location(in: view)
        view.endEditing(true)
        print(touch)
    }

}


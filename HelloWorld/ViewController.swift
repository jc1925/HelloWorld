//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kat Cha on 12/24/19.
//  Copyright © 2019 KatCha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
    }

    @IBAction func changeTextButton(_ sender: Any) {
        if textField.text == "" {
            if textLabel.text == "Hello from the World!" {
                textLabel.text = "Goodbye 👋"
            } else {
                textLabel.text = "Hello from the World!"
            }
        } else {
            textLabel.text = textField.text
            textField.text = ""
            view.endEditing(true)
        }
    }

    @IBAction func textColorButton(_ sender: Any) {
        if textLabel.textColor != UIColor.orange {
            textLabel.textColor = UIColor.orange
        } else {
            textLabel.textColor = UIColor.black
        }
    }
    
    @IBAction func viewColorButton(_ sender: Any) {
        if view.backgroundColor != UIColor.black {
            view.backgroundColor = UIColor.black
        } else {
            view.backgroundColor = backgroundColor
        }
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from the World!"
        textLabel.textColor = UIColor.black
        view.backgroundColor = backgroundColor
    }
}


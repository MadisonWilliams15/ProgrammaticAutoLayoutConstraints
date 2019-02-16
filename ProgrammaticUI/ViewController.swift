//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Madison Williams on 2/15/19.
//  Copyright © 2019 Madison Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton(type: .custom)
    let topTextField = UITextField(frame: .zero)
    let bottomTextField = UITextField(frame: .zero)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .black
        topTextField.borderStyle = .roundedRect
        view.addSubview(topTextField)
        topTextField.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Move Text", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        bottomTextField.borderStyle = .roundedRect
        bottomTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomTextField)
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        topTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        topTextField.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        
        bottomTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250).isActive = true
        bottomTextField.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        //this can replace the IBOutlet we normally use, this app is silly but I wanted to learn how to make something hapen when the button was clicked without the outlets we normally use
        button.addTarget(self, action: #selector(action(sender:)),for: .touchUpInside)
        
        
    }
    @objc fileprivate func action(sender: UIButton) {//when button is pressed
        if topTextField.text != "" && bottomTextField.text == ""{
            bottomTextField.text = topTextField.text
            topTextField.text = ""
        }
        else if topTextField.text == "" && bottomTextField.text != ""{
            topTextField.text = bottomTextField.text
            bottomTextField.text = ""
        }
        else{
            topTextField.text = ""
            bottomTextField.text = ""
        }
        
    }
    
}


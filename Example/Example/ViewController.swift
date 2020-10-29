//
//  ViewController.swift
//  Example
//
//  Created by Mohamad Mortada on 10/28/20.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button2.frame = CGRect(x: 200, y: 300, width: 200, height: 100)
        switch1.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        button2.addTarget(self, action: #selector(Button2Tapped), for: .touchUpInside)
        switch1.addTarget(self, action: #selector(switchTapped), for: .valueChanged)
        view.addSubview(button2)
        view.addSubview(switch1)

    }

    @IBAction func buttonTapped(_ sender: Any) {
        
        button.setTitle("Hello World", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.systemGreen, for: .normal)
        label.text = "Sup"
        label.textAlignment = .center
        field.placeholder = "Type Here"
    }
    
   private var button2: UIButton = {
       var button = UIButton()
       button.setTitle("IDK", for: .normal)
       button.backgroundColor = .red
       return button

    }()
    
    
    private var switch1: UISwitch = {
        var switch1 = UISwitch()
        return switch1
        
        
        
    }()
    
    @objc func Button2Tapped() {
        button2.setTitle("HELLOOOOO", for: .normal)
    }
    
    
    
    @objc func switchTapped() {
        switch1.onTintColor = .green
    }
}


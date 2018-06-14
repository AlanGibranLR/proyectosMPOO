//
//  ViewController.swift
//  Ejercicio 1
//
//  Created by Macbook on 06/03/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Resultado: UILabel!
    @IBOutlet weak var n2: UITextField!
    @IBOutlet weak var n1: UITextField!
    
    
    @IBAction func Mas(_ sender: UIButton) {
        
        guard let text = self.n1.text, let num1 = Double(text) else { return }
        guard let text2 = self.n2.text, let num2 = Double(text2) else { return }
        Resultado.text = "\(num1 + num2)"
        
    }
    

    @IBAction func resta(_ sender: UIButton) {
        guard let text = self.n1.text, let num1 = Double(text) else { return }
        guard let text2 = self.n2.text, let num2 = Double(text2) else { return }
      Resultado.text = "\(num1 - num2)"
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    

}


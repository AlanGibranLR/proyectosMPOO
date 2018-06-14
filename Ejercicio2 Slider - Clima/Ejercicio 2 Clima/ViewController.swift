//
//  ViewController.swift
//  Ejercicio 2 Clima
//
//  Created by Macbook on 06/03/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Imagen: UIImageView!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelClima: UILabel!
    
    
    @IBAction func slider(_ sender: UISlider) {
        let valor = Int(slider.value * 100)
        let cadena = "\(valor)"
        label.text = cadena
        
        switch valor {
        case 0...20:
            labelClima.text = "Sol"
            Imagen.image = UIImage(named: "sunset")
            
        
            
        case 21...40:
            labelClima.text = "Nubes"
            Imagen.image = UIImage(named: "cloudy")
            
        case 41...60:
            labelClima.text = "Lluvia"
         Imagen.image = UIImage(named: "rainy")
            
        case 61...80:
            labelClima.text = "Granizo"
            Imagen.image = UIImage(named: "hail")
            
        default:
            labelClima.text = "Nieve"
            
            Imagen.image = UIImage(named: "snowy")
            
        }

    
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }




}


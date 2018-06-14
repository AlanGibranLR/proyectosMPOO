//
//  ViewController.swift
//  Buttons
//
//  Created by Alan Gibán López 03/05/18.
//  Copyright © 2018 . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ejeX: Int = 200
    var ejeY : Int = 350
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        view.addSubview(boton1)
        view.addSubview(boton2)
        view.addSubview(boton3)
        view.addSubview(boton4)
        view.addSubview(label)
        //Up Button
        boton1.frame = CGRect(x: 80, y: 530, width: 50, height: 60)
        //Left Button
        boton2.frame = CGRect(x: 20, y: 600, width: 60, height: 50)
        //Right Button
        boton3.frame = CGRect(x: 130, y: 600, width: 60, height: 50)
        //Bottom Button
        boton4.frame = CGRect(x: 80, y: 660, width: 50 , height: 60)
        //Rock Bottom
        label.frame = CGRect(x: ejeX, y: ejeY, width: 50, height: 50)
        
        // Do any additional setup after loading the view.
    }

    var label : UILabel = {
        var label = UILabel()
        label.text = "X"
        label.font = UIFont.systemFont(ofSize: 50)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    
    var boton1: UIButton = {
        var btn = UIButton(type: .system )
        btn.setTitle("U", for: .normal )
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        btn.addTarget(self, action: #selector(arriba), for: .touchUpInside)
        btn.backgroundColor = UIColor.black
        btn.layer.cornerRadius = 5
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    var boton4: UIButton = {
        var btn = UIButton(type: .system )
        btn.setTitle("B", for: .normal )
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        btn.addTarget(self, action: #selector(abajo), for: .touchUpInside)
        btn.backgroundColor = UIColor.black
        btn.layer.cornerRadius = 5
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    var boton3: UIButton = {
        var btn = UIButton(type: .system )
        btn.setTitle("R", for: .normal )
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        btn.addTarget(self, action: #selector(derecha), for: .touchUpInside)
        btn.backgroundColor = UIColor.black
        btn.layer.cornerRadius = 5
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    var boton2: UIButton = {
        var btn = UIButton(type: .system )
        btn.setTitle("L", for: .normal )
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        btn.addTarget(self, action: #selector(izquierda), for: .touchUpInside)
        btn.backgroundColor = UIColor.black
        btn.layer.cornerRadius = 5
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    
    @objc func test(){
        print("click")
       
    }
    
    @objc func arriba(){
        
        ejeY = ejeY - 10
        
        
        label.frame = CGRect(x: ejeX, y: ejeY, width: 50, height: 50)
        
    }
    
    @objc func abajo(){
        
        ejeY = ejeY + 10
        
        
        label.frame = CGRect(x: ejeX, y: ejeY, width: 50, height: 50)
        
    }
    
    @objc func izquierda(){
        
        ejeX = ejeX - 10
        
        
        label.frame = CGRect(x: ejeX, y: ejeY, width: 50, height: 50)
        
    }
    
    @objc func derecha(){
        
        ejeX = ejeX + 10
        
        
        label.frame = CGRect(x: ejeX, y: ejeY, width: 50, height: 50)
        
    }
    

}

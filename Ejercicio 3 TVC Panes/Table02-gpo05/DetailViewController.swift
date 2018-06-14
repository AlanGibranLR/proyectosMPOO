//
//  DetailViewController.swift
//  Table02-gpo05
//
//  Created by Alan Gibrán López on 3/15/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imagenDetail: UIImageView!
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var numeroPanes: UITextField!
    @IBOutlet weak var pregunta: UILabel!
    
    @IBOutlet weak var precioDeCU: UILabel!
    
 
  
    
    
    @IBAction func buttonCompra(_ sender: UIButton) {
        
       // let celdaNueva = tableView.cellForRow(at: indexPath)
    
        var piezas = Double(numeroPanes.text!)
        
        if piezas == nil{
            piezas = 0
        }
        
        let precio = piezas!*articulos[Ind].precio
        
        let yesClosure = { (_ action: UIAlertAction) -> Void in
            //celdaNueva?.accessoryType = .checkmark
            //self.estadoAnimacion[tableView.indexPathfor] = true
            articulos[Ind].precioAPagar = precio
            print(articulos[Ind].precioAPagar)
        }
        let noClosure = { (_ action: UIAlertAction) -> Void in
            //celdaNueva?.accessoryType = .none
            //self.estadoAnimacion[indexPath.row] = false
        }
        
        let optionController = UIAlertController(title: "¿Lo comprará?", message: "Precio a pagar \(precio)", preferredStyle: .alert)
        
                let yesAction = UIAlertAction(title: "Si", style: .default, handler: yesClosure)
        
        
                let noAction = UIAlertAction(title: "No", style: .cancel, handler: noClosure)
        
        
                optionController.addAction(yesAction)
                optionController.addAction(noAction)
        
                present(optionController, animated: true, completion: nil)
        
        

    }
    

    
    
    
    var producto: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pregunta.text = "¿Cuantos articulos desea compar?"
        precioDeCU.text = "$ \(String(articulos[Ind].precio))"
        etiqueta.text = articulos[Ind].desc
        imagenDetail.image = UIImage(named: articulos[Ind].imagen)

    }

    
    
    

    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ResultadosViewController.swift
//  Calculadora de Índice de masa corporal
//
//  Created by Ziutzel grajales on 15/03/23.
//

import UIKit


class ResultadosViewController: UIViewController {

    @IBOutlet weak var porcentajeIMC: UILabel!
    
    @IBOutlet weak var recomendaciones: UILabel!
   
    
    var resultadoIMC : String?
    var aviso : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        porcentajeIMC.text = resultadoIMC
        recomendaciones.text = aviso
        view.backgroundColor = color
    }
    
    @IBAction func recalcular(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
   
    @IBAction func regresarButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
}

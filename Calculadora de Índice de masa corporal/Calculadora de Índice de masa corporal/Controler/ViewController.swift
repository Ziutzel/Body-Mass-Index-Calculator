//
//  ViewController.swift
//  Calculadora de Índice de masa corporal
//
//  Created by Ziutzel grajales on 15/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pesoLabel: UILabel!
    
    @IBOutlet weak var alturaLabel: UILabel!
    
    @IBOutlet weak var pesoSlider: UISlider!
    
    @IBOutlet weak var alturaSlider: UISlider!
    
    
    var altura : Double = 0.0
    var peso : Double = 0.0
    
    
    var calculadoraManager = CalculadoraManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcularButton(_ sender: UIButton) {
        
        let peso = pesoSlider.value
        let altura = alturaSlider.value
        calculadoraManager.calcularIMC(Peso: Double(peso), Altura: Double(altura))
        //Codigo para navegar entre pantallas sin segue
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "ResultadosViewController") as! ResultadosViewController
        
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        vc.resultadoIMC = calculadoraManager.retornavalorIMC()
        vc.aviso = calculadoraManager.returnRecomendaciones()
        vc.color = calculadoraManager.retornarColor()
        self.present(vc, animated: true )
        
        
    }
    
    @IBAction func pesoSliderAction(_ sender: UISlider) {
      
       pesoLabel.text = "\(String(format:"%.2f",sender.value)) kg "
    }
    
    @IBAction func alturaSliderAction(_ sender: UISlider) {
    
    alturaLabel.text = "\(String(format:"%.2f",sender.value)) m"
        
    }
    

}


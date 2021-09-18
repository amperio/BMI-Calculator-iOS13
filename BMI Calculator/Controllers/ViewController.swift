//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sld_height: UISlider!
    @IBOutlet weak var sld_weight: UISlider!
    @IBOutlet weak var lbl_height: UILabel!
    @IBOutlet weak var lbl_weight: UILabel!
    
    var brain = CalculateBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sld_actions(_ sender: UISlider) {
        lbl_height.text = String(format: "%.2f",sender.value)
    }
    
    @IBAction func sld_actions2(_ sender: UISlider) {
        lbl_weight.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func btn_calculate(_ sender: UIButton) {
        let height = sld_height.value
        let weight = sld_weight.value
        brain.calculateIBM(weight: weight, height: height)
        self.performSegue(withIdentifier: "goToNext", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.valor = String(format: "%.2f", brain.getBMI())
            destinationVC.backGraundcolor = brain.getColor()
            destinationVC.mensaje = brain.getMensaje()
        }
    }
}


// REALIZANDO INTERFAZ CON CODIGO
//         view.backgroundColor = .orange
//         let lbl_text = UILabel()
//         lbl_text.text = mensaje
//         lbl_text.frame = CGRect(x: 0, y: 50, width: 100, height: 50)
//         view.addSubview(lbl_text)





//                ___                  ___ 
//               -   -________________-   -
//             /----.       AMP        .----\
//            (  __  |                |  __  )
//            | (@ ) |                | ( @) |
//           /\\____//                \\____//\
//          /              *:   :*             \
//          \`\ ____________________________ /`/
//           \                                /
//            \    $$$$$$$$$$$$$$$$$$$$$$    /
//             \    $$$$$$$$$$$$$$$$$$$$    /
//              -__  $$$$$$$$$$$$$$$$$$  __-
//                  -_$$$$$$$$$$$$$$$$_-




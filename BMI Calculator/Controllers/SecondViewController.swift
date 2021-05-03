//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Juan Navarro  on 2/9/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var lbl_valor: UILabel!
    @IBOutlet weak var lbl_mensaje: UILabel!
    
    var valor: String?
    var backGraundcolor: UIColor?
    var mensaje: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_valor.text = valor
        view.backgroundColor = backGraundcolor
        lbl_mensaje.text = mensaje
    }
    
    
    @IBAction func btn_back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

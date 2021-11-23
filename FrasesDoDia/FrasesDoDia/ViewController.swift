//
//  ViewController.swift
//  FrasesDoDia
//
//  Created by Tiago Melillo on 02/10/21.
//  Copyright © 2021 Curso iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
   
    @IBAction func novaFrase(_ sender: Any) {
        
        var frases:[String] = []
        frases.append("frase1")
        frases.append("frase2")
        frases.append("frase3")
        
        let numero = arc4random_uniform(3)
        
        legendaResultado.text = (frases[Int(numero)])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


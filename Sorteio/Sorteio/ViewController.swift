//
//  ViewController.swift
//  Sorteio
//
//  Created by Tiago Melillo on 02/10/21.
//  Copyright © 2021 Curso iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet weak var legendaResultado: UILabel!
    @IBAction func gerarNumero(_ sender: Any) {
        
        var numero = arc4random_uniform(11)
        legendaResultado.text = String(numero)
       
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


//
//  ViewController.swift
//  Signos Aula
//
//  Created by Tiago Melillo on 09/11/21.
//  Copyright © 2021 Curso iOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{

    var signos:[String] = []
    var significadoSignos:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    signos.append("Aries")
    signos.append("Aquario")
    signos.append("Touro")
    signos.append("Escorpiao")
    signos.append("Gemeos")
        
    significadoSignos.append("Este e aries")
    significadoSignos.append("Este e aquario")
    significadoSignos.append("Este e touro")
    significadoSignos.append("Este e Escorpiao")
    significadoSignos.append("Este e Gemeos")
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[ indexPath.row ]
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do Signo", message: significadoSignos [ indexPath.row ], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil )
        
        
       // print( significadoSignos [ indexPath.row ])
        
    }
    }


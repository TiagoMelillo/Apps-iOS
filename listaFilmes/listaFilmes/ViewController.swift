//
//  ViewController.swift
//  listaFilmes
//
//  Created by Tiago Melillo on 25/11/21.
//  Copyright © 2021 Curso iOS. All rights reserved.
//

import UIKit
// ALterar ViewController para UITableViewController
class ViewController: UITableViewController {

    // Em vez de um array de string, criaremos um array de objetos. File-New-Swift File e cria Filme.swift
    var filmes: [Filme] = []
    
    override func viewDidLoad() {
    //Dentro do método viewDidLoad vamos configurar valores para os filmes. Para isso criaremos uma instancia de filmes, utilizando a classe criada Filmes.
        super.viewDidLoad()
        //cria uma variavel do tipo filme, instancia e cria o array de filmes, cada um contendo um objeto de filme. Dentro de cada objeto temos titulo, descrição e futuramente uma imagem
        var filme: Filme
        filme = Filme(titulo: "Filme1", descricao: "descricao 1", imagem: #imageLiteral(resourceName: "filme7") )
        filmes.append(filme)
        filme = Filme(titulo: "Filme2", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme8") )
        filmes.append(filme)
        filme = Filme(titulo: "Filme3", descricao: "descricao 3", imagem: #imageLiteral(resourceName: "filme3") )
        filmes.append(filme)
        filme = Filme(titulo: "Filme4", descricao: "descricao 4", imagem: #imageLiteral(resourceName: "filme6") )
        filmes.append(filme)
        filme = Filme(titulo: "Filme5", descricao: "descricao 5", imagem: #imageLiteral(resourceName: "filme1") )
        filmes.append(filme)
        filme = Filme(titulo: "Filme6", descricao: "descricao 6", imagem: #imageLiteral(resourceName: "filme10") )
        filmes.append(filme)
        
    }
//Para exibir os filmes
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    //configurando a celula:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //começaremos recuperando o filme, o indexPath nos informa que posição está sendo montada a linha. No caso abaixo recuperamos o primeiro filme, atraves do indice (indexPath) e guardamos na variavel filme.
        let filme = filmes[ indexPath.row]
        //para definir o Identifier, deve-se ir em View controller, "Table View Cell" e nomear o identificador de reuso da celula "celulaReuso", depois cria uma contante recebendo ele.
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        //apos ter a celula declarada, podemos escolher o valor a ser mostrado, no caso o titulo do filme
    celula.textLabel?.text = filme.titulo
        //P2: após adicionar os ícones de imagem como parametro em ilme = Filme(return celula):
    celula.imageView?.image = filme.imagem
        //antes de acabar essa parte, deve-se criar o navigation controller
        
        return celula
    }
//Segunda parte: Adiciona-se as imagens dos filmes no Assets.xcassets e move cada uma para o 3x. Depois adicionar imagem à classe Filme.
}


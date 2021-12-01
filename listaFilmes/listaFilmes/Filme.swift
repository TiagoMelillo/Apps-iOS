//
//  Filme.swift
//  listaFilmes
//
//  Created by Tiago Melillo on 25/11/21.
//  Copyright © 2021 Curso iOS. All rights reserved.
//

//Necessario trocar de Fundation para UIKit, que é o kit padrao pra trabalhar com interfaces.
import UIKit

//Criando classe filme
class Filme{
    //Cada um dos objetos será uma instancia(objeto) da classe Filme.
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    //Apos criar a classe, temos que inicializá-la juntamente com seus parâmetros. Sendo o parametro imagem adicionado após as imagens serem adicionadas, na segunda parte de desenvolvimento do app.
    init(titulo: String, descricao: String, imagem: UIImage) {
    //O titulo e descrição usados no init() nao sao os mesmos das variaveis titulo e descricao da classe filme, portanto devemos declará-los.
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
    


//
//  BancoDeDados.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 15/05/22.
//

import Foundation
import UIKit

public class BancoDeDados {
    public var filmes: [Filme] = []
    public var usuarios: [Usuario] = []
    
    static var shared: BancoDeDados = {
        let instance = BancoDeDados()
        return instance
    }()    
    
    private init() {
        preencheFilmes()
        preencheUsuarios()
    }
    
    private func preencheUsuarios() {
        
        ///Andre
        let andre = Usuario(nome: "Andre")
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Alien"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "A Bruxa de Blair"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Os Pássaros"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Drácula, de Bran Stoker"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Carrie, a Estranha"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O Chamado"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O Exorcista"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Pânico!"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Psicose"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O Iluminado"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O Fantasma da Ópera"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Hellraiser"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Invocação do Mal"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Meia Noite Levarei Sua Alma"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O bebê de Rosemary"
        }) {
            andre.filmesFavoritos.append(filme)
        }
        
        ///Juliana
        let juliana = Usuario(nome: "Juliana")
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Invocação do Mal"
        }) {
            juliana.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Meia Noite Levarei Sua Alma"
        }) {
            juliana.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O bebê de Rosemary"
        }) {
            juliana.filmesFavoritos.append(filme)
        }
        
        ///Jessica
        let jessica = Usuario(nome: "Jessica")
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Psicose"
        }) {
            jessica.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O Iluminado"
        }) {
            jessica.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O Fantasma da Ópera"
        }) {
            jessica.filmesFavoritos.append(filme)
            juliana.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Hellraiser"
        }) {
            jessica.filmesFavoritos.append(filme)
        }
        
        ///Adriano
        let adriano = Usuario(nome: "Adriano")
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Alien"
        }) {
            adriano.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "A Bruxa de Blair"
        }) {
            adriano.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Os Pássaros"
        }) {
            adriano.filmesFavoritos.append(filme)
        }
        
        ///Jussara
        let jussara = Usuario(nome: "Jussara")
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Drácula, de Bran Stoker"
        }) {
            jussara.filmesFavoritos.append(filme)
            adriano.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Carrie, a Estranha"
        }) {
            jussara.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O Chamado"
        }) {
            jussara.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "O Exorcista"
        }) {
            jussara.filmesFavoritos.append(filme)
        }
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Pânico!"
        }) {
            jussara.filmesFavoritos.append(filme)
        }
        
        andre.foto = UIImage(named: "homem1")
        juliana.foto = UIImage(named: "mulher3")
        jessica.foto = UIImage(named: "mulherProgramadora")
        adriano.foto = UIImage(named: "homemProgramador")
        jussara.foto = UIImage(named: "mulher2")
        
        andre.adiciona(amigo: juliana)
        andre.adiciona(amigo: adriano)
        andre.adiciona(amigo: jessica)
        andre.adiciona(amigo: jussara)
        juliana.adiciona(amigo: jussara)
        juliana.adiciona(amigo: andre)
        jessica.adiciona(amigo: adriano)
        jessica.adiciona(amigo: andre)
        adriano.adiciona(amigo: jessica)
        adriano.adiciona(amigo: andre)
        jussara.adiciona(amigo: andre)
        jussara.adiciona(amigo: juliana)
        
        usuarios.append(andre)
        usuarios.append(juliana)
        usuarios.append(jessica)
        usuarios.append(adriano)
        usuarios.append(jussara)
    }
    
    private func preencheFilmes() {
        filmes.append(contentsOf: Filme.criarFilmesDeTerror())
    }
}

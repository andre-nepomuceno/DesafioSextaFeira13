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
    
    init() {
        preencheFilmes()
        preencheUsuarios()
    }
    
    public func buscaUsuarioLogado(nome: String) -> Usuario? {
        let usuario = bancoDeDados.usuarios.first(where: { usuario in
            usuario.nome.uppercased() == nome.uppercased()
        })
        return usuario
    }
    
    public func buscaFilmesDoUsuarioLogado(nome: String) -> [Filme] {
        guard let usuario = bancoDeDados.usuarios.first(where: { usuario in
            usuario.nome.uppercased() == nome.uppercased()
        }) else { return [] }
        
        return usuario.filmesFavoritos
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
            filme.titulo == "A Profecia"
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
            filme.titulo == "A Profecia"
        }) {
            adriano.filmesFavoritos.append(filme)
        }
        
        ///Jussara
        let jussara = Usuario(nome: "Jussara")
        if let filme = filmes.first(where: { filme in
            filme.titulo == "Drácula, de Bran Stoker"
        }) {
            jussara.filmesFavoritos.append(filme)
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
        filmes.append(Filme(
            titulo: "A Bruxa de Blair",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "ABruxaDeBlair") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        
        filmes.append(Filme(
            titulo: "A Coisa",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "ACoisa") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "Alien",
            anoDeLancemento: 1979,
            descricao: "",
            poster: UIImage(named: "Alien") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "A Noite dos Mortos-Vivos",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "ANoiteDosMortosVivos") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "A Profecia",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "AProfecia") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Carrie, a Estranha",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Carrie") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "Cemitério Maldito",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "CemiterioMaldito") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Drácula, de Bran Stoker",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Dracula") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Halloween",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Halloween") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Hellraiser",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Hellraiser") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Invocação do Mal",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "InvocacaoDoMal") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "It",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "It") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "Meia Noite Levarei Sua Alma",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "MeiaNoiteLevareiSuaAlma") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "Nosferatu",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Nosferatu") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O bebê de Rosemary",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "OBebeDeRosemary") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O Chamado",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "OChamadoOriginal") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O Exorcista",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "OExorcista") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O Fantasma da Ópera",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "OFantasmaDaOpera") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O Iluminado",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "OIluminado") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Os Outros",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "OsOutros") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Os Pássaros",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "OsPassaros") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Pânico!",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Panico") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Poltergeist",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Poltergeist") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Psicose",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Psicose") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Sexta-feira 13",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "SextaFeira13") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Tubarão",
            anoDeLancemento: 2000,
            descricao: "",
            poster: UIImage(named: "Tubarao") ?? UIImage(),
            tipoPublico: .Infantil)
        )
    }
}

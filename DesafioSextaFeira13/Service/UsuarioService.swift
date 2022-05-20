//
//  UsuarioService.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 20/05/22.
//

import Foundation

class UsuarioService {
    
    private let usuariosContext = BancoDeDados.shared.usuarios
    
    func buscarUsuarioLogado() -> Usuario? {
        return buscarUsuarioAPartirDo(nome: "Andre")
    }
    
    func buscarUsuarioAPartirDo(nome: String) -> Usuario? {
        usuariosContext.first(where: { usuario in
            usuario.nome.uppercased() == nome.uppercased()
        })
    }
}

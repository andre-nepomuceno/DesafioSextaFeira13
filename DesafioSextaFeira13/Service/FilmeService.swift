//
//  FilmeService.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 20/05/22.
//

import Foundation

class FilmeService {
    
    private let filmesContext = BancoDeDados.shared.filmes
    
    func buscarFilmeAPartirDo(titulo: String) -> Filme? {
        filmesContext.first(where: { filme in
            filme.titulo == titulo
        })
    }
}

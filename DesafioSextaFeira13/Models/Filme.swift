//
//  Filme.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 15/05/22.
//

import Foundation
import UIKit

public enum TipoPublico: Int {
    case Adulto = 0
    case Infantil = 1
}

public class Filme {
    let id: String
    let titulo: String
    let anoDeLancamento: Int
    let descricao: String
    let poster: UIImage
    let tipoPublico: TipoPublico
    
    init(titulo: String, anoDeLancemento: Int, descricao: String, poster: UIImage, tipoPublico: TipoPublico) {
        self.id = UUID().uuidString
        self.titulo = titulo
        self.anoDeLancamento = anoDeLancemento
        self.descricao = descricao
        self.poster = poster
        self.tipoPublico = tipoPublico
    }
}

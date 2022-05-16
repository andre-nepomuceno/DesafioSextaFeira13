//
//  Usuario.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 15/05/22.
//

import Foundation
import UIKit

public class Usuario {
    let id: String
    let nome: String
    var listaDeAmigos: [Usuario] = []
    var filmesFavoritos: [Filme] = []
    var humor: String?
    var dataUltimoAcesso: Date?
    var dataProximoFilme: Date?
    var foto: UIImage?
    
    init(nome: String) {
        self.id = UUID().uuidString
        self.nome = nome
    }
    
    public func setHumor(humor: String) {
        self.humor = humor
    }
    
    public func setDataUltimoAcesso(dataUltimoAcesso: Date) {
        self.dataUltimoAcesso = dataUltimoAcesso
    }
    
    public func setDataProximoFilme(dataProximoFilme: Date) {
        self.dataProximoFilme = dataProximoFilme
    }
    
    public func adicionaAosFavoritos(filme: Filme) {
        filmesFavoritos.append(filme)
    }
    
    public func adiciona(amigo: Usuario) {
        listaDeAmigos.append(amigo)
    }
    
}

//
//  FilmesCollectionViewCell.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 15/05/22.
//

import UIKit

class FilmesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var filme: Filme?
    
    public func configuraCelula(filme: Filme) {
        self.filme = filme
        configuraLabel(texto: filme.titulo)
        configuraImagem(imagem: filme.poster)
    }
    
    private func configuraLabel(texto: String) {
        tituloLabel.text = texto
        tituloLabel.numberOfLines = 0
        tituloLabel.lineBreakMode = .byWordWrapping
        tituloLabel.sizeToFit()
    }
    
    private func configuraImagem(imagem: UIImage) {
        posterImageView.image = imagem
        posterImageView.layer.cornerRadius = 20
    }
}

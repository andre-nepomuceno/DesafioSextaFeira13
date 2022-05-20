//
//  FilmesFiltroCollectionViewCell.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 15/05/22.
//

import UIKit

class FilmesFiltroCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var filme: Filme?
    
    public func configuraCelula(filme: Filme) {
        self.filme = filme
        configuraLabel(tituloLabel, filme.titulo)
        configuraImagem(posterImageView, filme.poster)
    }
    
    private func configuraImagem(_ imageView: UIImageView, _ imagem: UIImage) {
        imageView.image = imagem
        imageView.layer.cornerRadius = 20
    }
    
    private func configuraLabel(_ label: UILabel, _ texto: String) {
        label.text = texto
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
    }
}

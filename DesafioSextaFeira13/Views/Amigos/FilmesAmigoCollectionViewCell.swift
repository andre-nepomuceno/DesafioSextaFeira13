//
//  FilmesAmigoCollectionViewCell.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 16/05/22.
//

import UIKit

class FilmesAmigoCollectionViewCell: UICollectionViewCell {
    
    var filme: Filme?
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    func configuraCelula(filme: Filme) {
        self.filme = filme
        tituloLabel.text = filme.titulo
        posterImageView.image = filme.poster
    }
    
}

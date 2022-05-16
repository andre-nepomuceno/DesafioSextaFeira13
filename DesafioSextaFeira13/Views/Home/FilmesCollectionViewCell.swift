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
        tituloLabel.text = self.filme?.titulo
        posterImageView.image = self.filme?.poster
    }
}

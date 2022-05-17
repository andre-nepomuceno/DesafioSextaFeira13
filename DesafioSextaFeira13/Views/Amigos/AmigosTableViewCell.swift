//
//  AmigosTableViewCell.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 15/05/22.
//

import UIKit

class AmigosTableViewCell: UITableViewCell {
    
    var amigo: Usuario?
    var filmesString = ""

    @IBOutlet weak var filmesEmComumLabel: UILabel!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var fotoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configuraCelula(amigo: Usuario) {
        self.amigo = amigo
        fotoImageView.image = self.amigo?.foto
        nomeLabel.text = self.amigo?.nome
        filmesEmComumLabel.text = "\(buscarFilmesDoAmigo())"
        filmesEmComumLabel.numberOfLines = 0
        filmesEmComumLabel.lineBreakMode = .byWordWrapping
        filmesEmComumLabel.sizeToFit()
        
    }
    
    private func buscarFilmesDoAmigo() -> String {
        let filmesUsuario = BancoDeDados.shared.buscaFilmesDoUsuarioLogado(nome: "Andre")
        guard let amigo = self.amigo else { return "" }
        let filmesDoAmigo = amigo.filmesFavoritos
        
        for filme in filmesDoAmigo {
            if filmesUsuario.contains(where: { filmeUsuario in
                filmeUsuario.titulo == filme.titulo
            }) {
                if filmesString == "" {
                    filmesString = "Filmes em comum: \(filme.titulo)"
                } else {
                    filmesString += ", \(filme.titulo)"
                }
            }
        }
        return filmesString
    }

}

//
//  AmigosTableViewCell.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 15/05/22.
//

import UIKit

class AmigosTableViewCell: UITableViewCell {
    var usuarioLogado: Usuario?
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
    
    func configuraCelula(amigo: Usuario, usuarioLogado: Usuario) {
        self.amigo = amigo
        self.usuarioLogado = usuarioLogado

        fotoImageView.image = self.amigo?.foto
        configuraLabel(nomeLabel, amigo.nome)
        configuraLabel(filmesEmComumLabel, buscarFilmesEmComum())
        
    }
    private func configuraLabel(_ label: UILabel,_ texto: String) {
        label.text = texto
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
    }
    
    private func buscarFilmesEmComum() -> String {
        guard let amigo = self.amigo, let usuarioLogado = self.usuarioLogado else { return "" }
        let filmesDoAmigo = amigo.filmesFavoritos
        let filmesUsuario = usuarioLogado.filmesFavoritos
        
        for filme in filmesDoAmigo {
            if filmesUsuario.contains(where: { filmeUsuario in
                filmeUsuario.titulo == filme.titulo
            }) {
                acrescentaAosFilmesEmComum(titulo: filme.titulo)
            }
        }
        return filmesString
    }
    
    private func acrescentaAosFilmesEmComum(titulo: String) {
        if filmesString == "" {
            filmesString = "Filmes em comum: \(titulo)"
        } else {
            filmesString += ", \(titulo)"
        }
    }
}

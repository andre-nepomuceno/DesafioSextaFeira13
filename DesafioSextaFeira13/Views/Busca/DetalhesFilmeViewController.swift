//
//  DetalhesFilmeViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 16/05/22.
//

import UIKit

class DetalhesFilmeViewController: UIViewController {

    var filme: Filme?
    
    @IBOutlet weak var amigosQueCurtiramLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var anoLancamentoLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let filme = filme {
            preencheComponentes(filme: filme)
        }
    }
    
    private func preencheComponentes(filme: Filme) {
        tituloLabel.text = filme.titulo
        anoLancamentoLabel.text = "Ano de lançamento: \(filme.anoDeLancamento)"
        descricaoLabel.text = filme.descricao
        posterImageView.image = filme.poster
        amigosQueCurtiramLabel.text = montaTextoAmigosQueCurtiram(filme: filme)
        configuraLabel(amigosQueCurtiramLabel)
        configuraLabel(tituloLabel)
        configuraLabel(anoLancamentoLabel)
    }
    
    private func configuraLabel(_ label: UILabel) {
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
    }
    
    private func montaTextoAmigosQueCurtiram(filme: Filme) -> String {
        let usuarioLogado = BancoDeDados.shared.buscaUsuarioLogado(nome: "Andre")
        
        guard let amigos = usuarioLogado?.listaDeAmigos else { return "" }

        let amigosQueCurtiram = amigos.filter { usuario in
            usuario.filmesFavoritos.contains { filmeUsr in
                filmeUsr.titulo == filme.titulo
            }
        }
        
        var textoAmigos = ""
        for amigo in amigosQueCurtiram {
            if textoAmigos == "" {
                textoAmigos = "Estes amigos também curtiram este filme:\n \(amigo.nome)"
            }
            else {
                textoAmigos += ", \(amigo.nome)"
            }
        }
        return textoAmigos
    }
}

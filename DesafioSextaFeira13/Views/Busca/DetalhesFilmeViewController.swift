//
//  DetalhesFilmeViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 16/05/22.
//

import UIKit

class DetalhesFilmeViewController: UIViewController {

    var filme: Filme?
    var usuarioLogado: Usuario?
    var stringAmigosQueCurtiramOsMesmosFilmes = ""
    
    @IBOutlet weak var amigosQueCurtiramLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var anoLancamentoLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let filme = filme, let usuarioLogado = usuarioLogado {
            preencheComponentes(filme: filme, usuarioLogado: usuarioLogado)
        }
    }
    
    private func preencheComponentes(filme: Filme, usuarioLogado: Usuario) {
        configuraImagem(posterImageView, filme.poster)
        configuraLabel(amigosQueCurtiramLabel, montaTextoAmigosQueCurtiram(filme: filme))
        configuraLabel(tituloLabel, filme.titulo)
        configuraLabel(anoLancamentoLabel, "Ano de lançamento: \(filme.anoDeLancamento)")
        configuraLabel(descricaoLabel, filme.descricao)
    }
    
    private func configuraLabel(_ label: UILabel,_ texto: String) {
        label.text = texto
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
    }

    private func configuraImagem(_ imageView: UIImageView,_ imagem: UIImage) {
        imageView.image = imagem
        imageView.layer.cornerRadius = 20
    }
    
    private func montaTextoAmigosQueCurtiram(filme: Filme) -> String {
        let amigosQueCurtiram = buscarAmigosQueCurtiramFilmesEmComum(filme: filme)
        
        for amigo in amigosQueCurtiram {
            acrescentaAmigoQueCurtiuMesmoFilme(nome: amigo.nome)
        }
        return stringAmigosQueCurtiramOsMesmosFilmes
    }
    
    private func buscarAmigosQueCurtiramFilmesEmComum(filme: Filme) -> [Usuario] {
        guard let amigos = usuarioLogado?.listaDeAmigos else { return [] }

        return amigos.filter { usuario in
            usuario.filmesFavoritos.contains { filmeUsr in
                filmeUsr.titulo == filme.titulo
            }
        }
    }
    
    private func acrescentaAmigoQueCurtiuMesmoFilme(nome: String) {
        if stringAmigosQueCurtiramOsMesmosFilmes == "" {
            stringAmigosQueCurtiramOsMesmosFilmes = "Estes amigos também curtiram este filme:\n \(nome)"
        }
        else {
            stringAmigosQueCurtiramOsMesmosFilmes += ", \(nome)"
        }
    }
}

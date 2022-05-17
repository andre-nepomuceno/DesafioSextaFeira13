//
//  DetalhesAmigoViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 16/05/22.
//

import UIKit

class DetalhesAmigoViewController: UIViewController {

    var amigo: Usuario?
    var filmesEmComum: [Filme] = []
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var filmesEmComumCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let amigo = self.amigo {
            buscaFilmesEmComum(amigo: amigo)
            nomeLabel.text = amigo.nome
            fotoImageView.image = amigo.foto
            filmesEmComumCollectionView.reloadData()
        }
        filmesEmComumCollectionView.dataSource = self
    }
    
    private func buscaFilmesEmComum(amigo: Usuario) {
        guard let usuarioLogado = BancoDeDados.shared.buscaUsuarioLogado(nome: "Andre") else { return }
        for filme in amigo.filmesFavoritos {
            if usuarioLogado.filmesFavoritos.contains(where: { filmeUsr in
                filme.titulo == filmeUsr.titulo
            }) {
                filmesEmComum.append(filme)
            }
        }
    }
}
extension DetalhesAmigoViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmesEmComum.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellFilmesEmComum", for: indexPath) as? FilmesAmigoCollectionViewCell {
            cell.configuraCelula(filme: filmesEmComum[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
    }
}

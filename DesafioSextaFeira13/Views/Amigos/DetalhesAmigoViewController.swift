//
//  DetalhesAmigoViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 16/05/22.
//

import UIKit

class DetalhesAmigoViewController: UIViewController {

    var amigo: Usuario?
    var usuarioLogado: Usuario?
    var filmesEmComum: [Filme] = []
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var filmesEmComumCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let amigo = self.amigo, let usuarioLogado = self.usuarioLogado {
            buscaFilmesEmComumEntre(amigo, usuarioLogado)
            configuraLabel(nomeLabel, amigo.nome)
            configuraImagemAmigo(imageView: fotoImageView, imagem: amigo.foto ?? UIImage())
            filmesEmComumCollectionView.reloadData()
        }
        filmesEmComumCollectionView.dataSource = self
    }
    
    private func buscaFilmesEmComumEntre(_ amigo: Usuario, _ usuarioLogado: Usuario) {
        for filme in amigo.filmesFavoritos {
            if usuarioLogado.filmesFavoritos.contains(where: { filmeUsr in
                filme.titulo == filmeUsr.titulo
            }) {
                filmesEmComum.append(filme)
            }
        }
    }
    
    private func configuraImagemAmigo(imageView: UIImageView,  imagem: UIImage) {
        imageView.image = imagem
        
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOpacity = 0.5
        imageView.layer.shadowOffset = CGSize.init(width: -2, height: -2)
        imageView.layer.shadowRadius = 15
        imageView.layer.shadowPath = UIBezierPath(roundedRect: imageView.bounds, cornerRadius: 0).cgPath
        imageView.clipsToBounds = false
    }
    
    private func configuraLabel(_ label: UILabel,_ texto: String) {
        label.text = texto
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
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

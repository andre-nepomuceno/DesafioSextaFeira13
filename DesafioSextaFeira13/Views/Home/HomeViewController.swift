//
//  ViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 14/05/22.
//

import UIKit

public var bancoDeDados = BancoDeDados()

class HomeViewController: UIViewController {

    @IBOutlet weak var filmesCollectionView: UICollectionView!
    
    var filmesFavoritosDoUsuario: [Filme] = []
    var listaDeAmigosDoUsuario: [Usuario] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let filmesDoUsuario = bancoDeDados.usuarios.first(where: { usuario in
            usuario.nome == "Andre"
        })?.filmesFavoritos {
            filmesFavoritosDoUsuario.append(contentsOf: filmesDoUsuario)
        }
        if let amigos = bancoDeDados.usuarios.first(where: { usuario in
            usuario.nome == "Andre"
        })?.listaDeAmigos {
            listaDeAmigosDoUsuario.append(contentsOf: amigos)
        }
        filmesCollectionView.delegate = self
        filmesCollectionView.dataSource = self
    }


}
extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmesFavoritosDoUsuario.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmesCell", for: indexPath) as? FilmesCollectionViewCell {
            cell.configuraCelula(filme: filmesFavoritosDoUsuario[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}

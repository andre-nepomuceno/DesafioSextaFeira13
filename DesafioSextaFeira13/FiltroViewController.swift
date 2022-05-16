//
//  FiltroViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 14/05/22.
//

import UIKit

class FiltroViewController: UIViewController {

    @IBOutlet weak var tipoPublicoSegmentedControl: UISegmentedControl!
    @IBOutlet weak var filmesFiltroCollectionView: UICollectionView!
    
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
        filmesFiltroCollectionView.delegate = self
        filmesFiltroCollectionView.dataSource = self
    }
    @IBAction func tipoPublicoSegmentedAction(_ sender: Any) {
        filmesFiltroCollectionView.reloadData()
    }
    

}
extension FiltroViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let segmentedSelecionado = TipoPublico(rawValue: tipoPublicoSegmentedControl.selectedSegmentIndex)
        
        switch segmentedSelecionado {
            case .Adulto:
                let filmesPublicoAdulto = filmesFavoritosDoUsuario.filter({ filme in
                    filme.tipoPublico == .Adulto
                })
                return filmesPublicoAdulto.count
            case .Infantil:
                let filmesPublicoInfantil = filmesFavoritosDoUsuario.filter({ filme in
                    filme.tipoPublico == .Infantil
                })
                return filmesPublicoInfantil.count
            case .none:
                return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let segmentedSelecionado = TipoPublico(rawValue: tipoPublicoSegmentedControl.selectedSegmentIndex)
        var filmes: [Filme] = []
        switch segmentedSelecionado {
            case .Adulto:
                let filmesPublicoAdulto = filmesFavoritosDoUsuario.filter({ filme in
                    filme.tipoPublico == .Adulto
                })
                filmes.append(contentsOf: filmesPublicoAdulto)
            case .Infantil:
            let filmesPublicoInfantil = filmesFavoritosDoUsuario.filter({ filme in
                    filme.tipoPublico == .Infantil
                })
                filmes.append(contentsOf: filmesPublicoInfantil)
            case .none:
                break
        }
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellFilmesFiltro", for: indexPath) as? FilmesFiltroCollectionViewCell {
            cell.configuraCelula(filme: filmes[indexPath.item])
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
}

extension FiltroViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

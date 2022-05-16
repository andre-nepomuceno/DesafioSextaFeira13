//
//  BuscaViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 14/05/22.
//

import UIKit

class BuscaViewController: UIViewController {

    @IBOutlet weak var filmesBuscaTableView: UITableView!
    @IBOutlet weak var tituloFilmeTextfield: UITextField!
    
    var filmesFavoritosDoUsuario: [Filme] = []
    var listaDeAmigosDoUsuario: [Usuario] = []
    
    var filmesEncontrados: [Filme] = []
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
        filmesBuscaTableView.delegate = self
        filmesBuscaTableView.dataSource = self
        tituloFilmeTextfield.delegate = self
    }
}
extension BuscaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmesEncontrados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.imageView?.image = filmesEncontrados[indexPath.row].poster
        cell.textLabel?.text = filmesEncontrados[indexPath.row].titulo
        return cell
    }
}
extension BuscaViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
extension BuscaViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let tituloDigitado = textField.text?.uppercased() else { return true}
        
        let filmes = filmesFavoritosDoUsuario.filter { filme in
            filme.titulo.uppercased().contains(tituloDigitado)
        }
        filmesEncontrados = filmes
        filmesBuscaTableView.reloadData()
        
        return true
    }
}

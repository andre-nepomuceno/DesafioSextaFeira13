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
    
    let service: UsuarioService = UsuarioService()

    var usuarioLogado: Usuario?
    var filmesEncontrados: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usuarioLogado = service.buscarUsuarioLogado()
        
        filmesBuscaTableView.delegate = self
        filmesBuscaTableView.dataSource = self
        tituloFilmeTextfield.delegate = self
        
        tituloFilmeTextfield.becomeFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "buscaParaDetalhesSegue" {
            if let telaDetalhes = segue.destination as? DetalhesFilmeViewController {
                guard let filmeEscolhido = sender as? Filme else { return }
                telaDetalhes.filme = filmeEscolhido
                telaDetalhes.usuarioLogado = usuarioLogado
            }
        }
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
        let filmeSelecionado = filmesEncontrados[indexPath.row]
        performSegue(withIdentifier: "buscaParaDetalhesSegue", sender: filmeSelecionado)
    }
}
extension BuscaViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let tituloDigitado = textField.text?.uppercased(), let usuarioLogado = usuarioLogado  else { return true}
        
        let filmes = usuarioLogado.filmesFavoritos.filter { filme in
            filme.titulo.uppercased().contains(tituloDigitado)
        }
        filmesEncontrados = filmes
        filmesBuscaTableView.reloadData()
        
        return true
    }
}

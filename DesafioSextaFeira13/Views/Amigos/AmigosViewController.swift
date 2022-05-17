//
//  AmigosViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 14/05/22.
//

import UIKit

class AmigosViewController: UIViewController {

    var usuarioLogado: Usuario?
    
    @IBOutlet weak var amigosTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let usuario = BancoDeDados.shared.buscaUsuarioLogado(nome: "Andre") {
            self.usuarioLogado = usuario
        }
        amigosTableView.delegate = self
        amigosTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let telaDetalhes = segue.destination as? DetalhesAmigoViewController {
            if let sender = sender as? Usuario? {
                telaDetalhes.amigo = sender
            }
        }
    }
}

extension AmigosViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usuarioLogado?.listaDeAmigos.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellAmigos", for: indexPath) as? AmigosTableViewCell {
            if let usuarioLogado = usuarioLogado {
                cell.configuraCelula(amigo: usuarioLogado.listaDeAmigos[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }
}

extension AmigosViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let usuarioLogado = usuarioLogado {
            performSegue(withIdentifier: "amigosDetalhesSegue", sender: usuarioLogado.listaDeAmigos[indexPath.row])
        }
    }
}

//
//  ConfiguracoesViewController.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 14/05/22.
//

import UIKit

class ConfiguracoesViewController: UIViewController {
    
    let service: UsuarioService = UsuarioService()
    
    @IBOutlet weak var quandoPretendeDatePicker: UIDatePicker!
    @IBOutlet weak var ultimoAcessoDatePicker: UIDatePicker!
    @IBOutlet weak var sentimentosPickerView: UIPickerView!
    
    var sentimentos: [String] = [
        "Animado pra ver um terror!",
        "Só quero saber da pipoca...",
        "Alguém acende a luz?",
        "Não é medo, é receio...",
        "Acho que durmo antes do susto",
    ]

    var usuarioLogado: Usuario?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usuarioLogado = service.buscarUsuarioLogado()
        sentimentosPickerView.delegate = self
        sentimentosPickerView.dataSource = self
        if let dtUltimoAcesso = usuarioLogado?.dataUltimoAcesso {
            ultimoAcessoDatePicker.setDate(dtUltimoAcesso, animated: true)
        }
    }
 
    @IBAction func quandoPretendeValueChanged(_ sender: UIDatePicker) {
        let dataDoProximoFilme = sender.date
        usuarioLogado?.dataProximoFilme = dataDoProximoFilme
    }
}
extension ConfiguracoesViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sentimentos.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sentimentos[row]
    }
    
}
extension ConfiguracoesViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let humor = sentimentos[pickerView.selectedRow(inComponent: 0)]
        usuarioLogado?.humor = humor
    }
}


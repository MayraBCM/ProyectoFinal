//
//  RegistroPresenter.swift
//  FinalProyect
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation

class RegistroPresenter : RegistroPresenterProtocol  {
    
    // MARK: Properties
    weak var view: RegistroViewProtocol?
    var interactor: RegistroInteractorInputProtocol?
    var wireFrame: RegistroWireFrameProtocol?
    
    // TODO: implement presenter methods
    func viewDidLoad() {
        print("Pantalla de Registro")
    }
}

extension RegistroPresenter: RegistroInteractorOutputProtocol {
    // TODO: implement interactor output methods
}

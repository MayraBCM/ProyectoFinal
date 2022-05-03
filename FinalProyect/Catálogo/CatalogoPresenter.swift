//
//  CatalogoPresenter.swift
//  FinalProyect
//
//  Created by Mario Arceo on 03/05/22.
//  
//

import Foundation

class CatalogoPresenter: CatalogoPresenterProtocol  {
    
    // MARK: Properties
    weak var view: CatalogoViewProtocol?
    var interactor: CatalogoInteractorInputProtocol?
    var wireFrame: CatalogoWireFrameProtocol?
    
    // TODO: implement presenter methods
    func viewDidLoad() {
        print("Soy la vusta Catálogo")
    }
    
    
}

extension CatalogoPresenter: CatalogoInteractorOutputProtocol {
    // TODO: implement interactor output methods
}

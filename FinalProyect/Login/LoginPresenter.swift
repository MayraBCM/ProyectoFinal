//
//  LoginPresenter.swift
//  FinalProyect
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation

class LoginPresenter : LoginPresenterProtocol {
    
    // MARK: Properties
    weak var view: LoginViewProtocol?
    var interactor: LoginInteractorInputProtocol?
    var wireFrame: LoginWireFrameProtocol?
    
    // TODO: implement presenter methods
    func viewDidLoad() {
        
        print("soy la vista login")
    }
    func ingresar() {
        if(0 == 0){
            wireFrame?.presentCatalogoView(from: view!)
        }
    }
    
    func registro() {
        wireFrame?.presentRegistroView(from: view!)
    }
    
}

extension LoginPresenter: LoginInteractorOutputProtocol {
    // TODO: implement interactor output methods
}

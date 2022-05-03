//
//  LoginView.swift
//  FinalProyect
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

class LoginView: UIViewController {

    // MARK: Properties
    var presenter: LoginPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    
    
    @IBAction func ingresar(_ sender: Any) {
        
        presenter?.ingresar()
        
    }
    
    
    @IBAction func registrar(_ sender: Any) {
        
        presenter?.registro()
        
    }
    
}

extension LoginView: LoginViewProtocol {
    // TODO: implement view output methods
}

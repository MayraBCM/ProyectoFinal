//
//  RegistroProtocols.swift
//  FinalProyect
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

protocol RegistroViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: RegistroPresenterProtocol? { get set }
}

protocol RegistroWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createRegistroModule() -> UIViewController
}

protocol RegistroPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: RegistroViewProtocol? { get set }
    var interactor: RegistroInteractorInputProtocol? { get set }
    var wireFrame: RegistroWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol RegistroInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol RegistroInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: RegistroInteractorOutputProtocol? { get set }
    var localDatamanager: RegistroLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: RegistroRemoteDataManagerInputProtocol? { get set }
}

protocol RegistroDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol RegistroRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: RegistroRemoteDataManagerOutputProtocol? { get set }
}

protocol RegistroRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol RegistroLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}

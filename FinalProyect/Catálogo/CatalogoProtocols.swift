//
//  CatalogoProtocols.swift
//  FinalProyect
//
//  Created by Mario Arceo on 03/05/22.
//  
//

import Foundation
import UIKit

protocol CatalogoViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: CatalogoPresenterProtocol? { get set }
}

protocol CatalogoWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createCatalogoModule() -> UIViewController
}

protocol CatalogoPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: CatalogoViewProtocol? { get set }
    var interactor: CatalogoInteractorInputProtocol? { get set }
    var wireFrame: CatalogoWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol CatalogoInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol CatalogoInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: CatalogoInteractorOutputProtocol? { get set }
    var localDatamanager: CatalogoLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: CatalogoRemoteDataManagerInputProtocol? { get set }
}

protocol CatalogoDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol CatalogoRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: CatalogoRemoteDataManagerOutputProtocol? { get set }
}

protocol CatalogoRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol CatalogoLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}

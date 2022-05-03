//
//  CatalogoInteractor.swift
//  FinalProyect
//
//  Created by Mario Arceo on 03/05/22.
//  
//

import Foundation

class CatalogoInteractor: CatalogoInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: CatalogoInteractorOutputProtocol?
    var localDatamanager: CatalogoLocalDataManagerInputProtocol?
    var remoteDatamanager: CatalogoRemoteDataManagerInputProtocol?

}

extension CatalogoInteractor: CatalogoRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}

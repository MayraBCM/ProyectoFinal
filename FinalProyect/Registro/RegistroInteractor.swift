//
//  RegistroInteractor.swift
//  FinalProyect
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation

class RegistroInteractor: RegistroInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: RegistroInteractorOutputProtocol?
    var localDatamanager: RegistroLocalDataManagerInputProtocol?
    var remoteDatamanager: RegistroRemoteDataManagerInputProtocol?

}

extension RegistroInteractor: RegistroRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}

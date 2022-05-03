//
//  RegistroWireFrame.swift
//  FinalProyect
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

class RegistroWireFrame: RegistroWireFrameProtocol {

    class func createRegistroModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "RegistroView")
        if let view = navController as? RegistroView {
            let presenter: RegistroPresenterProtocol & RegistroInteractorOutputProtocol = RegistroPresenter()
            let interactor: RegistroInteractorInputProtocol & RegistroRemoteDataManagerOutputProtocol = RegistroInteractor()
            let localDataManager: RegistroLocalDataManagerInputProtocol = RegistroLocalDataManager()
            let remoteDataManager: RegistroRemoteDataManagerInputProtocol = RegistroRemoteDataManager()
            let wireFrame: RegistroWireFrameProtocol = RegistroWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.localDatamanager = localDataManager
            interactor.remoteDatamanager = remoteDataManager
            remoteDataManager.remoteRequestHandler = interactor
            
            return navController
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "RegistroView", bundle: Bundle.main)
    }
    
}

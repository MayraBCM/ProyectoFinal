//
//  CatalogoWireFrame.swift
//  FinalProyect
//
//  Created by Mario Arceo on 03/05/22.
//  
//

import Foundation
import UIKit

class CatalogoWireFrame: CatalogoWireFrameProtocol {

    class func createCatalogoModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "CatalogoView")
        if let view = navController.children.first as? CatalogoView {
            let presenter: CatalogoPresenterProtocol & CatalogoInteractorOutputProtocol = CatalogoPresenter()
            let interactor: CatalogoInteractorInputProtocol & CatalogoRemoteDataManagerOutputProtocol = CatalogoInteractor()
            let localDataManager: CatalogoLocalDataManagerInputProtocol = CatalogoLocalDataManager()
            let remoteDataManager: CatalogoRemoteDataManagerInputProtocol = CatalogoRemoteDataManager()
            let wireFrame: CatalogoWireFrameProtocol = CatalogoWireFrame()
            
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
        return UIStoryboard(name: "CatalogoView", bundle: Bundle.main)
    }
    
}

//
//  CatalogoView.swift
//  FinalProyect
//
//  Created by Mario Arceo on 03/05/22.
//  
//

import Foundation
import UIKit

class CatalogoView: UIViewController {

    // MARK: Properties
    var presenter: CatalogoPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension CatalogoView: CatalogoViewProtocol {
    // TODO: implement view output methods
}

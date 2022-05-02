//
//  RegistroView.swift
//  FinalProyect
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

class RegistroView: UIViewController {

    // MARK: Properties
    var presenter: RegistroPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension RegistroView: RegistroViewProtocol {
    // TODO: implement view output methods
}

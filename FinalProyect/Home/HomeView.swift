//
//  HomeView.swift
//  FinalProyect
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

class HomeView: UIViewController {
    
    @IBOutlet weak var login: UIButton!

    // MARK: Properties
    var presenter: HomePresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func logIn(_ sender:Any){
        presenter?.showDetailView()
    }
    
    
}

extension HomeView: HomeViewProtocol {
    // TODO: implement view output methods
}

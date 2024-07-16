//  ProximasPeliculasRouter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class ProximasPeliculasRouter {
	
    static func createModule() -> UIViewController {
        
        let view = ProximasPeliculasViewController()
        let presenter = ProximasPeliculasPresenter()
        let interactor = ProximasPeliculasInteractor()
        let router = ProximasPeliculasRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension ProximasPeliculasRouter: ProximasPeliculas_PresenterToRouterProtocol {
    
}

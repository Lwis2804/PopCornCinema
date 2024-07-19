//  MoviesDetailViewRouter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 17/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MoviesDetailViewRouter {
	
    static func createModule(andMovie movieOnPreviousClass : ModeloMovies) -> UIViewController {
        
        let view = MoviesDetailViewViewController()
        let presenter = MoviesDetailViewPresenter()
        let interactor = MoviesDetailViewInteractor()
        let router = MoviesDetailViewRouter()
        
        view.presenter = presenter
        view.movieUpdateInfo = movieOnPreviousClass
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension MoviesDetailViewRouter: MoviesDetailView_PresenterToRouterProtocol {
    
}

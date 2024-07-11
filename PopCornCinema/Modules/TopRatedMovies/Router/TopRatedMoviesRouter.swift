//  TopRatedMoviesRouter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 04/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class TopRatedMoviesRouter {
	
    static func createModule() -> UIViewController {
        
        let view = TopRatedMoviesViewController()
        let presenter = TopRatedMoviesPresenter()
        let interactor = TopRatedMoviesInteractor()
        let router = TopRatedMoviesRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension TopRatedMoviesRouter: TopRatedMovies_PresenterToRouterProtocol {
    
}

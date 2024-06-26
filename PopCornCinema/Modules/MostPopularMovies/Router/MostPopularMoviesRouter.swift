//  MostPopularMoviesRouter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 26/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MostPopularMoviesRouter {
	
    static func createModule() -> UIViewController {
        
        let view = MostPopularMoviesViewController()
        let presenter = MostPopularMoviesPresenter()
        let interactor = MostPopularMoviesInteractor()
        let router = MostPopularMoviesRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension MostPopularMoviesRouter: MostPopularMovies_PresenterToRouterProtocol {
    
}

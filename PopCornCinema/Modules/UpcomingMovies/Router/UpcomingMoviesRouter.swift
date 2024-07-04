//  UpcomingMoviesRouter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 03/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class UpcomingMoviesRouter {
	
    static func createModule() -> UIViewController {
        
        let view = UpcomingMoviesViewController()
        let presenter = UpcomingMoviesPresenter()
        let interactor = UpcomingMoviesInteractor()
        let router = UpcomingMoviesRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension UpcomingMoviesRouter: UpcomingMovies_PresenterToRouterProtocol {
    
}

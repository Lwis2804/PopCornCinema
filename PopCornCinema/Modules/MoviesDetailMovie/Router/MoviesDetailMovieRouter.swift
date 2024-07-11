//  MoviesDetailMovieRouter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 10/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MoviesDetailMovieRouter {
	
    static func createModule() -> UIViewController {
        
        let view = MoviesDetailMovieViewController()
        let presenter = MoviesDetailMoviePresenter()
        let interactor = MoviesDetailMovieInteractor()
        let router = MoviesDetailMovieRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension MoviesDetailMovieRouter: MoviesDetailMovie_PresenterToRouterProtocol {
    
}

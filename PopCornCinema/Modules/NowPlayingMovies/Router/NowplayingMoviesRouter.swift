//  NowplayingMoviesRouter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 28/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class NowplayingMoviesRouter {
	
    static func createModule() -> UIViewController {
        
        let view = NowplayingMoviesViewController()
        let presenter = NowplayingMoviesPresenter()
        let interactor = NowplayingMoviesInteractor()
        let router = NowplayingMoviesRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension NowplayingMoviesRouter: NowplayingMovies_PresenterToRouterProtocol {
    
    
    func goToMoviesDetailView(with movie: ModeloMovies, andView view : NowplayingMovies_PresenterToViewProtocol) {
        if let view = view as? NowplayingMoviesViewController {
            let vc = MoviesDetailViewRouter.createModule(andMovie: movie)
            view.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}

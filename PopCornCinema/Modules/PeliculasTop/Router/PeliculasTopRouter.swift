//  PeliculasTopRouter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class PeliculasTopRouter {
	
    static func createModule() -> UIViewController {
        
        let view = PeliculasTopViewController()
        let presenter = PeliculasTopPresenter()
        let interactor = PeliculasTopInteractor()
        let router = PeliculasTopRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension PeliculasTopRouter: PeliculasTop_PresenterToRouterProtocol {
    
    func goToMoviesDetailView(with movie: ModeloMovies, andView view: PeliculasTop_PresenterToViewProtocol) {
        if let view = view as? PeliculasTopViewController {
            let vc = MoviesDetailViewRouter.createModule(andMovie: movie)
            view.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}

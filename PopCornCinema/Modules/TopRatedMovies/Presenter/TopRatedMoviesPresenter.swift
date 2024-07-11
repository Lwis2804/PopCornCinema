//  TopRatedMoviesPresenter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 04/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class TopRatedMoviesPresenter: TopRatedMovies_ViewToPresenterProtocol {

    weak var view: TopRatedMovies_PresenterToViewProtocol?
    var interactor: TopRatedMovies_PresenterToInteractorProtocol?
    var router: TopRatedMovies_PresenterToRouterProtocol?
    
    func getToTopRatedMovies() {
        interactor?.getTopRatedMoviesToInteractor()
    }
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension TopRatedMoviesPresenter: TopRatedMovies_InteractorToPresenterProtocol {
    func getTopRatedMoviesFromInteractor(withResponde response: TopRatedResponse) {
        view?.updateTopRatedMovies(withResponse: response)
    }
    

}

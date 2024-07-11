//  MoviesDetailMoviePresenter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 10/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MoviesDetailMoviePresenter: MoviesDetailMovie_ViewToPresenterProtocol {
 
    
    weak var view: MoviesDetailMovie_PresenterToViewProtocol?
    var interactor: MoviesDetailMovie_PresenterToInteractorProtocol?
    var router: MoviesDetailMovie_PresenterToRouterProtocol?
    
    func getToMoviesDetailMovie() {
        interactor?.getMoviesDetailMovieToInteractor()
    }
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension MoviesDetailMoviePresenter: MoviesDetailMovie_InteractorToPresenterProtocol {
    func getMoviesDetailMovieFromInteractor(withResponse responeUp: UpcomingResponse, withResponse response: TopRatedResponse) {
        view?.updateMoviesDetailMovieFromInteractor(withResponse: responeUp)
    }
}

//  MostPopularMoviesPresenter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 26/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MostPopularMoviesPresenter: MostPopularMovies_ViewToPresenterProtocol {
    
    weak var view: MostPopularMovies_PresenterToViewProtocol?
    var interactor: MostPopularMovies_PresenterToInteractorProtocol?
    var router: MostPopularMovies_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension MostPopularMoviesPresenter: MostPopularMovies_InteractorToPresenterProtocol {

}

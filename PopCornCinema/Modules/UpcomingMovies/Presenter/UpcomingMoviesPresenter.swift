//  UpcomingMoviesPresenter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 03/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class UpcomingMoviesPresenter: UpcomingMovies_ViewToPresenterProtocol {
    
    weak var view: UpcomingMovies_PresenterToViewProtocol?
    var interactor: UpcomingMovies_PresenterToInteractorProtocol?
    var router: UpcomingMovies_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension UpcomingMoviesPresenter: UpcomingMovies_InteractorToPresenterProtocol {

}

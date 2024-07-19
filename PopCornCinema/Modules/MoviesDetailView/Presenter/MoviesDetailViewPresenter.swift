//  MoviesDetailViewPresenter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 17/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MoviesDetailViewPresenter: MoviesDetailView_ViewToPresenterProtocol {
    
    weak var view: MoviesDetailView_PresenterToViewProtocol?
    var interactor: MoviesDetailView_PresenterToInteractorProtocol?
    var router: MoviesDetailView_PresenterToRouterProtocol?
    
    func getNowPlayingInfo(withResponse nowResponse: String) {
        interactor?.getToNowPlayingInfoToInteractor(withResponse: nowResponse)
        print(nowResponse)
    }
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension MoviesDetailViewPresenter: MoviesDetailView_InteractorToPresenterProtocol {
    func getNowPlayingMoviesInfoFromInteractor(withResponse nowResponse: NowPlayingResponse) {
        view?.updateNowPlayingInfo(withResponse: nowResponse)
    }
    

}

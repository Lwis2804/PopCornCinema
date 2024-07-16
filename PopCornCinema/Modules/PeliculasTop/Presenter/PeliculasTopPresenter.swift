//  PeliculasTopPresenter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class PeliculasTopPresenter: PeliculasTop_ViewToPresenterProtocol {
 
    weak var view: PeliculasTop_PresenterToViewProtocol?
    var interactor: PeliculasTop_PresenterToInteractorProtocol?
    var router: PeliculasTop_PresenterToRouterProtocol?
    
    func getToPeliculasTop() {
        interactor?.getPeliculasTopFromInteractor()
    }
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension PeliculasTopPresenter: PeliculasTop_InteractorToPresenterProtocol {
    func getPeloculasTopFromInteractor(withResponse response: TopRatedResponse) {
        view?.updatePeliculasTop(withResponse: response)
    }
    

}

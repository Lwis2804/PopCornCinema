//  ProximasPeliculasPresenter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class ProximasPeliculasPresenter: ProximasPeliculas_ViewToPresenterProtocol {
    
    weak var view: ProximasPeliculas_PresenterToViewProtocol?
    var interactor: ProximasPeliculas_PresenterToInteractorProtocol?
    var router: ProximasPeliculas_PresenterToRouterProtocol?
    
    func getToProximasPeliculas() {
        interactor?.getProximasPeliculasToInteractor()
    }
    
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension ProximasPeliculasPresenter: ProximasPeliculas_InteractorToPresenterProtocol {
    func getProximasPeliculasFromInteractor(withResponse response: UpcomingResponse) {
        view?.updateProximasPeliculas(withResponse: response)
    }
    

}

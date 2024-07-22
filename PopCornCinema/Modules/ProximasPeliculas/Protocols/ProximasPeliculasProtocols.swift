//  ProximasPeliculasProtocols.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Si queremos ir a otro modulo VIPER
 
 * goTo___________( )
 * goTo___________( _ : )
 
 Si queremos ir por datos o hacer un consumo
 * viewDidLoad()
 * getTo___________( )
 * getTo___________( _ : )
 */

// MARK: VIEW -> PRESENTER
protocol ProximasPeliculas_ViewToPresenterProtocol: AnyObject {
    var view: ProximasPeliculas_PresenterToViewProtocol? { get set }
    var interactor: ProximasPeliculas_PresenterToInteractorProtocol? { get set }
    var router: ProximasPeliculas_PresenterToRouterProtocol? { get set }
    
    func getToProximasPeliculas()
    func didSeletc(withMovie movie : ModeloMovies)
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

/**
 Sugerencias en el llamado de Funciones de  Presenter a Interactor
 :condiciones:
 
 Tratemos que la funcion se llame igual que desde la que viene en la vista al Presenter,
 pero en esta ocacion agregemosle el subfijo: 'ToInteractor', para saber que vamos
 del presenter al iintectartor
 
 * get___________ToInteractor( )
 * getTo___________ToInteractor( )
 
 * get___________ToInteractor( _ : )
 * getTo___________ToInteractor( _ : )
 
 */

// MARK: PRESENTER -> INTERACTOR
protocol ProximasPeliculas_PresenterToInteractorProtocol: AnyObject {
    var presenter: ProximasPeliculas_InteractorToPresenterProtocol? { get set }
    
    func getProximasPeliculasToInteractor()
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Tratemos que la funcion se llame igual que desde la que viene en la vista al Presenter,
 pero en esta ocacion agregemosle el subfijo: 'FromInteractor' con los parametros que correspondan,
 para saber que vamos del Interactor  al Presenter
 
 * get___________FromInteractor( )
 * getTo___________FromInteractor( )
 
 * get___________FromInteractor(_ :)
 * getTo___________FromInteractor(_ :)
 */

// MARK: INTERACTOR -> PRESENTER
protocol ProximasPeliculas_InteractorToPresenterProtocol: AnyObject {
    
    func getProximasPeliculasFromInteractor(withResponse response : UpcomingResponse)
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Tratemos de usar la funcion updateView(_ :), con los parametros que correspondan, para
 saber que vamos del Presenter a la Vista.
 
 * updateView(_: )
 
 */

// MARK: PRESENTER -> VIEW
protocol ProximasPeliculas_PresenterToViewProtocol: AnyObject {
    var presenter: ProximasPeliculas_ViewToPresenterProtocol? { get set }
    
    func updateProximasPeliculas(withResponse response : UpcomingResponse)
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Si queremos ir a otro modulo VIPER, usemos goTo_________( _ : ), con parametros si es necesario para
 asegurar que vamos del Presenter a el Router de otro Modulo VIPER.
 
 * goTo___________( _ : )
 */

// MARK: PRESENTER -> ROUTER
protocol ProximasPeliculas_PresenterToRouterProtocol: AnyObject {
    
    func goToMoviesDetailView(withMovie movie : ModeloMovies,andView view : ProximasPeliculas_PresenterToViewProtocol)
    
}

//  TopRatedMoviesProtocols.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 04/07/24.
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
protocol TopRatedMovies_ViewToPresenterProtocol: AnyObject {
	var view: TopRatedMovies_PresenterToViewProtocol? { get set }
	var interactor: TopRatedMovies_PresenterToInteractorProtocol? { get set }
	var router: TopRatedMovies_PresenterToRouterProtocol? { get set }
    func getToTopRatedMovies()
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
protocol TopRatedMovies_PresenterToInteractorProtocol: AnyObject {
    var presenter: TopRatedMovies_InteractorToPresenterProtocol? { get set }
    func getTopRatedMoviesToInteractor()
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
protocol TopRatedMovies_InteractorToPresenterProtocol: AnyObject {
    func getTopRatedMoviesFromInteractor (withResponde response : TopRatedResponse)
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
protocol TopRatedMovies_PresenterToViewProtocol: AnyObject {
    var presenter: TopRatedMovies_ViewToPresenterProtocol? { get set }
    func updateTopRatedMovies(withResponse response : TopRatedResponse)
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
protocol TopRatedMovies_PresenterToRouterProtocol: AnyObject {
}

//  MoviesDetailMovieViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 10/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MoviesDetailMovieViewController: UIViewController {

    var presenter: MoviesDetailMovie_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension MoviesDetailMovieViewController: MoviesDetailMovie_PresenterToViewProtocol {
    func updateMoviesDetailMovieFromInteractor(withResponse responeUp: UpcomingResponse) {
        print(responeUp)
    }

    
}

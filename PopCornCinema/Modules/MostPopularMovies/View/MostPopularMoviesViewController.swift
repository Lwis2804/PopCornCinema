//  MostPopularMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 26/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MostPopularMoviesViewController: UIViewController {

    var presenter: MostPopularMovies_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension MostPopularMoviesViewController: MostPopularMovies_PresenterToViewProtocol {
}

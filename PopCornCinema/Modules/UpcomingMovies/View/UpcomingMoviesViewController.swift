//  UpcomingMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 03/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class UpcomingMoviesViewController: UIViewController {

    var presenter: UpcomingMovies_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension UpcomingMoviesViewController: UpcomingMovies_PresenterToViewProtocol {
}

//  NowplayingMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 28/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class NowplayingMoviesViewController: UIViewController {

    var presenter: NowplayingMovies_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension NowplayingMoviesViewController: NowplayingMovies_PresenterToViewProtocol {
}

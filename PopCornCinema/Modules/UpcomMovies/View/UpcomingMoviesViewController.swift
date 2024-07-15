//  UpcomingMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class UpcomingMoviesViewController: UIViewController {

    var presenter: UpcomingMovies_ViewToPresenterProtocol?
    var getUpcomingMovies : [UpcomingResults] = []

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.getToUpcomingMovies()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension UpcomingMoviesViewController: UpcomingMovies_PresenterToViewProtocol {
    func updateUpomingMovies(withResponse response: UpcomingResponse) {
        self.getUpcomingMovies = response.results ?? []
        print(response)
    }
    
}

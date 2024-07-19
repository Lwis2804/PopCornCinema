//  MoviesDetailViewViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 17/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MoviesDetailViewViewController: UIViewController {
    
    //MARK: - O U T L E T S
    @IBOutlet var backViewDetail: UIView!
    @IBOutlet var lblTitleMovie: UILabel!
    @IBOutlet var overViewMovie: UILabel!
    @IBOutlet var imageMovie: UIImageView!
    
    //MARK: - V A R I A B L E S

    var movieUpdateInfo : ModeloMovies = ModeloMovies()
    var presenter: MoviesDetailView_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Movie detail info trae \(movieUpdateInfo)")
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension MoviesDetailViewViewController: MoviesDetailView_PresenterToViewProtocol {
    func updateNowPlayingInfo(withResponse nowResponse: NowPlayingResponse) {
    }
}



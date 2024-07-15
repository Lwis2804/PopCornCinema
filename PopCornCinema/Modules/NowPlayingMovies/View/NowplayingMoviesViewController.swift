//  NowplayingMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 28/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class NowplayingMoviesViewController: UIViewController {
    @IBOutlet var nowPlayingMoviesTable: UITableView!
    
    var presenter: NowplayingMovies_ViewToPresenterProtocol?
    var getNowPlayingMovies : [NowPlayingResult] = []
    

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNowPlayingTable()
        presenter?.getToNowPlayingMovies()
    }
    
    func setUpNowPlayingTable() {
        self.nowPlayingMoviesTable.delegate = self
        self.nowPlayingMoviesTable.dataSource = self
        self.nowPlayingMoviesTable.register(NowPlayingMoviesTableViewCell.nib, forCellReuseIdentifier: NowPlayingMoviesTableViewCell.identifier)
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension NowplayingMoviesViewController: NowplayingMovies_PresenterToViewProtocol {
    func updateNowPlayingMovies(withResponse response: NowPlayingResponse) {
        self.getNowPlayingMovies = response.results ?? []
        DispatchQueue.main.async {
            self.nowPlayingMoviesTable.reloadData()
        }
    }
    
}

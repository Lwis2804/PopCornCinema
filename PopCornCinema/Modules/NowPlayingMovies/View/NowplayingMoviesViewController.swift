//  NowplayingMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 28/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class NowplayingMoviesViewController: UIViewController {
    
    @IBOutlet var nowPlayingMoviesTable: UITableView!
    
    
    var presenter: NowplayingMovies_ViewToPresenterProtocol?
    var nowPlayingMovies : [NowPlayingResult] = []
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable()
        presenter?.getToNowPlayingMovies()
    }
    
    func setUpTable() {
        self.nowPlayingMoviesTable.delegate = self
        self.nowPlayingMoviesTable.dataSource = self
        self.nowPlayingMoviesTable.register(NowPlayingTableViewCell.nib, forCellReuseIdentifier: NowPlayingTableViewCell.identifier)
    }
    
}

// MARK: - P R E S E N T E R · T O · V I E W
extension NowplayingMoviesViewController: NowplayingMovies_PresenterToViewProtocol {
    func updateNowPlayingMovies(withResponse response: NowPlayingResponse) {
        self.nowPlayingMovies = response.results ?? []
        DispatchQueue.main.async {
            self.nowPlayingMoviesTable.reloadData()
        }
    }
}

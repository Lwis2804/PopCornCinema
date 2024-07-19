//  MostPopularMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 26/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MostPopularMoviesViewController: UIViewController {

    @IBOutlet var tableMostPopularMovies: UITableView!
    
    var presenter: MostPopularMovies_ViewToPresenterProtocol?
    var mostPopularMovies : [ModeloMovies] = []

    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpMostPopularMovies()
        presenter?.getToMostPopularMovies()
    }
    
    func setUpMostPopularMovies() {
        self.tableMostPopularMovies.delegate = self
        self.tableMostPopularMovies.dataSource = self
        self.tableMostPopularMovies.register(MostPopularTableViewCell.nib, forCellReuseIdentifier: MostPopularTableViewCell.identifier)
    }
    
    
    
    
}


// MARK: - P R E S E N T E R · T O · V I E W
extension MostPopularMoviesViewController: MostPopularMovies_PresenterToViewProtocol {
    func updateMostPopularMovies(withResponse response: MostPopularResponse) {
        self.mostPopularMovies = response.results ?? []
        DispatchQueue.main.async {
            self.tableMostPopularMovies.reloadData()
        }
    }
    
}

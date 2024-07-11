//  TopRatedMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 04/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class TopRatedMoviesViewController: UIViewController {
    
    @IBOutlet var topRatedMoviesTable: UITableView!

    var presenter: TopRatedMovies_ViewToPresenterProtocol?
    var topRatedMovies : [TopRatedResults] = [] // porque es de tipo top rated results

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTopRatedTable()
        presenter?.getToTopRatedMovies()
    }
    
    func setUpTopRatedTable() {
        self.topRatedMoviesTable.dataSource = self
        self.topRatedMoviesTable.delegate = self
        self.topRatedMoviesTable.register(TopRatedMoviesTableViewCell.nib, forCellReuseIdentifier: TopRatedMoviesTableViewCell.identifier)
    }
    
    
}



// MARK: - P R E S E N T E R · T O · V I E W
extension TopRatedMoviesViewController: TopRatedMovies_PresenterToViewProtocol {
    func updateTopRatedMovies(withResponse response: TopRatedResponse) {
        self.topRatedMovies = response.results ?? []
        DispatchQueue.main.async {
            self.topRatedMoviesTable.reloadData()
        }
    }
    
}

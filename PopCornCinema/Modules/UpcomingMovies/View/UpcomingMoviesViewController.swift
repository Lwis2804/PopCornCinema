//  UpcomingMoviesViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 03/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class UpcomingMoviesViewController: UIViewController {
    
    @IBOutlet var upcomingMoviesTable: UITableView!
    

    var presenter: UpcomingMovies_ViewToPresenterProtocol?
    var upcomingMoviesResponse : [UpcomingResults] = []
    

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUpcomingTable()
        presenter?.getToUpcomingMovies()
    }
    
    func setUpUpcomingTable() {
        self.upcomingMoviesTable.delegate = self
        self.upcomingMoviesTable.dataSource = self
        self.upcomingMoviesTable.register(UpcomingResponseTableViewCell.nib, forCellReuseIdentifier: UpcomingResponseTableViewCell.identifier)
        
    }
    
}

// MARK: - P R E S E N T E R · T O · V I E W
extension UpcomingMoviesViewController: UpcomingMovies_PresenterToViewProtocol {
    func update(withResponse response: UpcomingResponse) {
        self.upcomingMoviesResponse = response.results ?? []
        DispatchQueue.main.async {
            self.upcomingMoviesTable.reloadData()
        }
    }
    
}

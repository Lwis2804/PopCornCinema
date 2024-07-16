//  ProximasPeliculasViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class ProximasPeliculasViewController: UIViewController {
    
    @IBOutlet var proximasPeliculasTable: UITableView!
    
    var presenter: ProximasPeliculas_ViewToPresenterProtocol?
    var getProximasPeliculas : [UpcomingResults] = []

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setProximasPeliculas()
        presenter?.getToProximasPeliculas()
    }
    
    func setProximasPeliculas() {
        self.proximasPeliculasTable.dataSource = self
        self.proximasPeliculasTable.delegate = self
        self.proximasPeliculasTable.register(UpcomingMoviesTableViewCell.nib, forCellReuseIdentifier: UpcomingMoviesTableViewCell.identifier)
    }
    
    
}

// MARK: - P R E S E N T E R · T O · V I E W
extension ProximasPeliculasViewController: ProximasPeliculas_PresenterToViewProtocol {
    func updateProximasPeliculas(withResponse response: UpcomingResponse) {
        self.getProximasPeliculas = response.results ?? []
        DispatchQueue.main.async {
            self.proximasPeliculasTable.reloadData()
        }
    }
}

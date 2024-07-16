//  PeliculasTopViewController.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class PeliculasTopViewController: UIViewController {
    
    @IBOutlet var peliculasTopTable: UITableView!
    
    var presenter: PeliculasTop_ViewToPresenterProtocol?
    var getPeliculasTop : [TopRatedResults] = []

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setPeliculasTop()
        presenter?.getToPeliculasTop()
    }
    
    func setPeliculasTop() {
        self.peliculasTopTable.delegate = self
        self.peliculasTopTable.dataSource = self
        self.peliculasTopTable.register(TopRatedMoviesTableViewCell.nib, forCellReuseIdentifier: TopRatedMoviesTableViewCell.identifier)
    }
    
}

// MARK: - P R E S E N T E R · T O · V I E W
extension PeliculasTopViewController: PeliculasTop_PresenterToViewProtocol {
    func updatePeliculasTop(withResponse reponse: TopRatedResponse) {
        self.getPeliculasTop = reponse.results ?? []
        DispatchQueue.main.async {
            self.peliculasTopTable.reloadData()
        }
    }
    
}

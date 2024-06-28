//
//  MostPopularMoviesViewControllerExtension.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 26/06/24.
//

import UIKit

extension MostPopularMoviesViewController : UITableViewDataSource & UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mostPopularMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cCell = tableView.dequeueReusableCell(withIdentifier: MostPopularTableViewCell.identifier, for: indexPath) as? MostPopularTableViewCell else { return MostPopularTableViewCell()}
                cCell.configCell(withEntry: mostPopularMovies[indexPath.row])
        return cCell
    }
    
    
}


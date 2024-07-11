//
//  opRatedMoviesViewControllerExtension.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 04/07/24.
//

import UIKit


extension TopRatedMoviesViewController : UITableViewDelegate & UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topRatedMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cCell = tableView.dequeueReusableCell(withIdentifier: TopRatedMoviesTableViewCell.identifier, for: indexPath) as? TopRatedMoviesTableViewCell else { return TopRatedMoviesTableViewCell() }
        cCell.configTopRatedCell(withEntry: topRatedMovies[indexPath.row])
        return cCell
    }
    
    
}

//
//  PeliculasTopViewControllerExtension.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 15/07/24.
//

import UIKit

extension PeliculasTopViewController : UITableViewDelegate & UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getPeliculasTop.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cCell = tableView.dequeueReusableCell(withIdentifier: TopRatedMoviesTableViewCell.identifier, for: indexPath) as? TopRatedMoviesTableViewCell else { return TopRatedMoviesTableViewCell()}
        cCell.configTopCell(withEntry: getPeliculasTop[indexPath.row])
        return cCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = getPeliculasTop[indexPath.row]
        self.presenter?.didSelect(withMovie: movie)
    }
    
}

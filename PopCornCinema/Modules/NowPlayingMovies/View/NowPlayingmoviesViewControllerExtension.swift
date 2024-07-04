//
//  NowPlayingmoviesViewControllerExtension.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 03/07/24.
//

import UIKit

extension NowplayingMoviesViewController : UITableViewDataSource & UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nowPlayingMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cCell = tableView.dequeueReusableCell(withIdentifier: NowPlayingTableViewCell.identifier, for: indexPath) as? NowPlayingTableViewCell else { return NowPlayingTableViewCell() }
        cCell.configCell(withEntry: nowPlayingMovies[indexPath.row])
        return cCell
    }
    
    
}

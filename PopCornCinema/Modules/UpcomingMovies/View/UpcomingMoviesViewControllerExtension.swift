//
//  UpcomingMoviesViewControllerExtension.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 03/07/24.
//

import UIKit


extension UpcomingMoviesViewController : UITableViewDataSource & UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.upcomingMoviesResponse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cCell = tableView.dequeueReusableCell(withIdentifier: UpcomingResponseTableViewCell.identifier, for: indexPath) as? UpcomingResponseTableViewCell else { return UpcomingResponseTableViewCell()}
        cCell.configUpcomingCell(withEntry: upcomingMoviesResponse[indexPath.row])
        return cCell
    }
    
    
}

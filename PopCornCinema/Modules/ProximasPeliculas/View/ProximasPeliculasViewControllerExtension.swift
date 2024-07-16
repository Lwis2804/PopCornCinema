
import UIKit


extension ProximasPeliculasViewController : UITableViewDelegate & UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getProximasPeliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cCell = tableView.dequeueReusableCell(withIdentifier: UpcomingMoviesTableViewCell.identifier, for: indexPath) as? UpcomingMoviesTableViewCell else { return UpcomingMoviesTableViewCell()}
        cCell.confiUpcomingCell(withEntry: getProximasPeliculas[indexPath.row])
        return cCell
    }
    
    
}

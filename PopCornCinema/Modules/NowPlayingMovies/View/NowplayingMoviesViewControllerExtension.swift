
import UIKit

extension NowplayingMoviesViewController : UITableViewDelegate & UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getNowPlayingMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cCell = tableView.dequeueReusableCell(withIdentifier: NowPlayingMoviesTableViewCell.identifier, for: indexPath) as? NowPlayingMoviesTableViewCell else { return NowPlayingMoviesTableViewCell()}
        cCell.configCell(withEntry: getNowPlayingMovies[indexPath.row])
        return cCell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = getNowPlayingMovies[indexPath.row]
        self.presenter?.didSelect(withMovie: movie)
    }
    
}

//
//  MostPopularTableViewCell.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 27/06/24.
//

import UIKit

class MostPopularTableViewCell: UITableViewCell {
    @IBOutlet var lblMostPopularMovieTitle: UILabel!
    @IBOutlet var lblMostPopularMoviesId: UILabel!
    @IBOutlet var mostPopularMoviesImage: UIImageView!
    
    var downloadTask : URLSessionDownloadTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configCell(withEntry entry : ModeloMovies?) {
        guard let entrada = entry else { return }
        self.lblMostPopularMovieTitle.text = "\(entrada.title ?? "")"
        self.lblMostPopularMoviesId.text = "\(entrada.releaseDate ?? "")"
        
        if let urlPoster = entry?.posterPath,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = mostPopularMoviesImage.loadImage(url: url)
        }
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

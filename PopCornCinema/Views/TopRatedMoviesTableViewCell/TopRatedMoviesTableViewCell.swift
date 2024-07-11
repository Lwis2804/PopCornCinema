//
//  TopRatedMoviesTableViewCell.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 04/07/24.
//

import UIKit

class TopRatedMoviesTableViewCell: UITableViewCell {
    
    @IBOutlet var backImageTopRated: UIImageView!
    @IBOutlet var topRatedMoviesImage: UIImageView!
    @IBOutlet var topRatedMoviesTitle: UILabel!
    @IBOutlet var topRatedMoviesReleaseDate: UILabel!
    
    var downloadTask : URLSessionDownloadTask?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configTopRatedCell(withEntry entry : TopRatedResults?) {
        guard let entrada = entry else { return }
        self.topRatedMoviesTitle.text = "\(entrada.title ?? "")"
        self.topRatedMoviesReleaseDate.text = "\(entrada.release_date ?? "")"
        
        if let urlPoster = entry?.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)") {
            downloadTask = topRatedMoviesImage.loadImage(url: url)
        }
    }
}

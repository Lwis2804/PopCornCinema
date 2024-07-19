//
//  NowPlayingMoviesTableViewCell.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 11/07/24.
//

import UIKit

class NowPlayingMoviesTableViewCell: UITableViewCell {
    @IBOutlet var backImageNowPlaying: UIImageView!
    @IBOutlet var lblNowPlayingTitle: UILabel!
    @IBOutlet var nowPlayingImage: UIImageView!
    @IBOutlet var lblNowPlayingDate: UILabel!
    
    var downloadTask : URLSessionDownloadTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func configCell (withEntry entry : ModeloMovies?) {
        guard let entrada = entry else { return }
        self.lblNowPlayingTitle.text = "\(entrada.title ?? "")"
        self.lblNowPlayingDate.text = "\(entrada.releaseDate ?? "")"
        
        if let urlPoster = entry?.posterPath,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = nowPlayingImage.loadImage(url: url)
        }
            
    }
    
}

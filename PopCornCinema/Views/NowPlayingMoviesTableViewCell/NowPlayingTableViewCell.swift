//
//  NowPlayingTableViewCell.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 03/07/24.
//

import UIKit

class NowPlayingTableViewCell: UITableViewCell {
    
    @IBOutlet var backImage: UIImageView!
    @IBOutlet var NowPlayingImage: UIImageView!
    @IBOutlet var nowPlayingMoviesTitle: UILabel!
    @IBOutlet var nowPlayingMoviesReleaseDate: UILabel!
    
    var downlodTask : URLSessionDownloadTask? // duda de que es el Download task  conjunto de datos que se envía a un procesador o cada una de las partes en que descompone el problema para su paralelización
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func configCell (withEntry entry : NowPlayingResult?) {
        guard let entrada = entry else { return }
        self.nowPlayingMoviesTitle.text = "\(entrada.title ?? "")"
        self.nowPlayingMoviesReleaseDate.text = "\(entrada.release_date ?? "")"
        
        if let urlPoster = entry?.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downlodTask = NowPlayingImage.loadImage(url: url)
        }
            
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

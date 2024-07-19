//
//  TopRatedMoviesTableViewCell.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 15/07/24.
//

import UIKit

class TopRatedMoviesTableViewCell: UITableViewCell {

    @IBOutlet var backImageTopRated: UIImageView!
    @IBOutlet var topRatedImage: UIImageView!
    @IBOutlet var lblTopRatedTitle: UILabel!
    @IBOutlet var lblTopRatedDate: UILabel!
    
    var downloadTask : URLSessionDownloadTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configTopCell(withEntry entry : ModeloMovies?) {
        guard let entrada = entry else { return }
        self.lblTopRatedTitle.text = "\(entrada.title ?? "")"
        self.lblTopRatedDate.text = "\(entrada.releaseDate ?? "")"
        
        if let urlPoster = entry?.posterPath,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = self.topRatedImage.loadImage(url: url)
        }
    }
}

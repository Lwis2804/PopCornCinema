//
//  UpcomingResponseTableViewCell.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 03/07/24.
//

import UIKit

class UpcomingResponseTableViewCell: UITableViewCell {
    
    @IBOutlet var backImage: UIImageView!
    @IBOutlet var upcomingMoviesImage: UIImageView!
    @IBOutlet var upcomingMoviesTitle: UILabel!
    @IBOutlet var upcomingMoviesReleaseDate: UILabel!
    
    var downlodTask : URLSessionDownloadTask?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configUpcomingCell(withEntry entry : UpcomingResults?){
        guard let entrada = entry else { return }
        self.upcomingMoviesTitle.text = "\(entrada.title ?? "")"
        self.upcomingMoviesReleaseDate.text = "\(entrada.release_date ?? "")"
        
        if let urlPoster = entry?.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downlodTask = upcomingMoviesImage.loadImage(url: url)
        }
        
        
    }
    
}

//
//  UpcomingMoviesTableViewCell.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 15/07/24.
//

import UIKit

class UpcomingMoviesTableViewCell: UITableViewCell {
    
    @IBOutlet var backImageUpcoming: UIImageView!
    @IBOutlet var upcomingMoviesImage: UIImageView!
    @IBOutlet var lblUpcomingTitle: UILabel!
    @IBOutlet var lblUpcomingDate: UILabel!
    
    var downloadTask : URLSessionDownloadTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func confiUpcomingCell(withEntry entry : UpcomingResults?) {
        guard let entrada = entry else { return }
        self.lblUpcomingTitle.text = "\(entrada.title ?? "")"
        self.lblUpcomingDate.text = "\(entrada.release_date ?? "")"
        
        if let urlPoster = entrada.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)") {
            downloadTask = upcomingMoviesImage.loadImage(url: url)
        }
    }
}

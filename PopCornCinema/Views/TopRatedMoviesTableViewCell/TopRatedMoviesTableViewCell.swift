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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

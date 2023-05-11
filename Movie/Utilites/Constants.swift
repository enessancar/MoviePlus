//
//  Constants.swift
//  Movie
//
//  Created by Enes Sancar on 11.05.2023.
//

import UIKit

enum SystemImages {
    static let calenderImage = UIImage(systemName: "calendar")
    static let filmImage = UIImage(systemName: "film")
    static let clockImage = UIImage(systemName: "clock")
    static let infoImage = UIImage(systemName: "info.circle")
    static let starImage = UIImage(systemName: "star.fill")
    static let locationImage = UIImage(systemName: "mappin.and.ellipse")
}

struct PaginationControl {
    var shouldDownloadMore: Bool = false
    var page: Int = 1
}

//
//  Constants.swift
//  AppcentNasaCase
//
//  Created by Selin Çağlar on 1.05.2022.
//

import Foundation
struct Constants{
    static let ApiKey = "ftfkQXPSowUpqNMA2CiBraRvXZt6XHKLsHpRCQPd"
    static let baseURL = "https://api.nasa.gov/mars-photos/api/v1/rovers/"
    static let baseURL3 = "/photos?sol=1000&page="
    static let baseURL4 = "&api_key="
}

enum TabChoose : String {
    case Curiosity
    case Opportunity
    case Spirit
}



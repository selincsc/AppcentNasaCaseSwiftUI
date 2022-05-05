//
//  HomePageViewModel.swift
//  AppcentNasaCase
//
//  Created by Selin Çağlar on 1.05.2022.
//

import Foundation
import SwiftUI


class HomePageViewModel:NSObject,ObservableObject{
    @Published var index = 0
    @Published var currentPage = 1
    @Published var articleList = [Photo]()
    @Published var pageChoose = ""
   
    func pagination(){
        if index % 20 == 0 {
            getPhotos(pageChoose: pageChoose)
        }
    }
 
    func getPhotos(pageChoose : String){
        self.pageChoose = pageChoose
        let url = Constants.baseURL + pageChoose + Constants.baseURL3 + String(currentPage) + Constants.baseURL4 +  Constants.ApiKey
        Network().fetchData(url: url) { (response: Result<MainModel, Error>) in
            DispatchQueue.main.async {
            switch response {
            case.success(let success):
               
                    if let article = success.photos{
                        self.articleList.append(contentsOf: article)
                    }
              
            case.failure(let failure):
                print(failure.localizedDescription)
            }
        }
        }
       
    }
}

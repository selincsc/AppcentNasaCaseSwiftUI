//
//  ContentView.swift
//  AppcentNasaCase
//
//  Created by Selin Çağlar on 1.05.2022.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
   
    let photo: Photo
    init(article: Photo){
        self.photo = article
    }
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        
        ZStack {
           
            KFImage(URL(string: photo.imgSrc ?? ""))
                .resizable()
                .frame(width: width*0.4, height: width*0.40)
                .scaledToFit()
                .shadow(color: .black, radius: 5, x: 1, y: 1)
                .padding()
            VStack {
                Spacer(minLength: 0)
                VStack{
                    Spacer(minLength: 0)
                    ZStack{
                        Color.black.opacity(0.3)
                           
                        VStack {
                            Spacer(minLength: 0)
                            Text(photo.camera?.fullName ?? "")
                                          .font(.headline)
                                          .lineLimit(1)
                                          .padding()
                                          .multilineTextAlignment(.center)
                                      .foregroundColor(.white)
                        }
                    }.frame(width: width*0.4, height: width*0.08)
                   
                }
            }.frame(width: width*0.4, height: width*0.25)
        }
        .shadow(color: .black, radius: 10, x: 1, y: 2)
        
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(article: Photo(id: 1, sol: 1, camera: Camera(id: 1, name: "bıdıbıdı", roverID: 1, fullName: "name"), imgSrc: "https://i.pinimg.com/originals/17/02/88/170288c5def516b41fae995f8ece7a6a.jpg", earthDate: "Bugün", rover: Rover(id: 1, name: "Rover", landingDate: "Bugün", launchDate: "O da Bugün", status: "Hazır")))
    }
}

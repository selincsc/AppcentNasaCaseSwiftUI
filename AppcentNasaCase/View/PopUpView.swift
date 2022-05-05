//
//  PopUpView.swift
//  AppcentNasaCase
//
//  Created by Selin Çağlar on 3.05.2022.
//

import SwiftUI
import Kingfisher
struct PopUpView: View {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    @Binding var photo : Photo
    @Binding var isShow : Bool
    var body: some View {
        ZStack{
            
            Color.black
            RoundedRectangle(cornerRadius: 20)
                .overlay(
                    VStack(spacing:0){
                        HStack(spacing:0){
                            Spacer(minLength: 0)
                            Button {
                                self.isShow = false
                            } label: {
                                Image(systemName: "xmark")
                                    .foregroundColor(.white)
                                    .padding(.trailing)
                            }
                        }
                        VStack(spacing:0){
                            Text(photo.camera?.fullName ?? "")
                                .font(.system(size: 37, weight: .bold))
                                .foregroundColor(.white)
                                .padding(.bottom)
                        }
                        VStack(spacing:0){
                            
                            KFImage(URL(string: photo.imgSrc ?? ""))
                                .resizable()
                                .frame(width: width*0.85, height: width*0.80)
                                .scaledToFit()
                                .clipped()
                                .shadow(color: .black, radius: 5, x: 1, y: 1)
                            
                            
                            VStack(alignment: .leading, spacing: 5){
                                HStack{
                                    Text(photo.rover?.name ?? "")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    Spacer(minLength: 0)
                                    Text(photo.rover?.status ?? "")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        .padding(.trailing)
                                }
                                Divider()
                                    .background(.white)
                                HStack{
                                    Text("Earth Date: ")
                                        .font(.title2)
                                        .font(.system(size: 8))
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    Spacer(minLength: 0)
                                    Text(photo.earthDate ?? "" )
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                    
                                }
                                Divider()
                                    .background(.white)
                                HStack{
                                    Text("Launching Date: ")
                                        .font(.title2)
                                        .font(.system(size: 8))
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    Spacer(minLength: 0)
                                    Text(photo.rover?.launchDate ?? "")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                }
                                Divider()
                                    .background(.white)
                                HStack{
                                    Text("Landing Date: ")
                                        .font(.title2)
                                        .font(.system(size: 8))
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                    Spacer(minLength: 0)
                                    Text(photo.rover?.landingDate ?? "")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                }
                            }
                            .padding(.top)
                        }
                        .padding()
                    })
                .frame(width: width*0.9, height: height*0.70)
                .transition(.move(edge: .bottom))
                .foregroundColor(.gray.opacity(0.8))
            
        }
    }
}
struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(photo: .constant(Photo.dummyData), isShow: .constant(true))
    }
}

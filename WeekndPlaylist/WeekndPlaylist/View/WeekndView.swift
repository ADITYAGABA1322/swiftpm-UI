//
//  WeekndView.swift
//  WeekndPlaylist
//
//  Created by Aditya Gaba on 11/06/23.
//

import SwiftUI

struct WeekndView: View {
    let images = ["The", "Radio", "Mega", "Hot", "Billie", "Calm", "Top", "10"]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 34) {
                    VStack {
                        Spacer()
                        Image(images[0])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .foregroundColor(.white)
                            .padding(.trailing, 13)
                            .offset(y: -690)
                            .offset(x: 0)
                        
                        VStack {
                            Text("This is The Weeknd")
                                .font(.system(size: 15))
                                .offset(x:-19)
                                .bold()
                            Text("The essential tracks from\nThe Weeknd.")
                                .font(.system(size: 15))
                        }
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[1])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 172)
                            .foregroundColor(.white)
                            .padding(.trailing, 13)
                            .offset(y: -724)
                            .offset(x: 0)
                        
                        VStack {
                            Text("The Weeknd Radio")
                                .font(.system(size: 15))
                                .bold()
                                .offset(x:-27 , y:-122)
                                .foregroundColor(.white)
                                .padding(.top, 10)
                        }
                        .offset(y: -614)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[2])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .foregroundColor(.white)
                            .padding(.trailing, 13)
                            .offset(y: -690)
                            .offset(x: 0)
                        
                        VStack {
                            Text("Mega Hit Mix")
                                .font(.system(size: 15))
                                .offset(x:-45)
                                .foregroundColor(.white)
                                .bold()
                            Text("A mega mix of 75 favorites\nfrom the last few years!")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                            
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[3])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .foregroundColor(.white)
                            .padding(.trailing, 13)
                            .offset(y: -690)
                            .offset(x: 0)
                        
                        VStack {
                            Text("Hot Hits India")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .offset(x : -42)
                                .bold()
                            Text("The hottest tracks in India.\nCover: Ed Sheeran")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[4])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .foregroundColor(.white)
                            .padding(.trailing, 13)
                            .offset(y: -690)
                            .offset(x: 0)
                        
                        VStack {
                            Text("Today's Top Hits")
                                .font(.system(size: 15))
                                .offset(x:-34)
                                .foregroundColor(.white)
                                .bold()
                            Text("Billie Eilish are on top of\nHottest 50!")
                                .font(.system(size: 15))
                                .offset(x : -10)
                                .foregroundColor(.white)
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[5])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .foregroundColor(.white)
                            .padding(.trailing, 13)
                            .offset(y: -690)
                            .offset(x: 0)
                        
                        VStack {
                            Text("Pop Shots")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .offset(x : -57)
                                .bold()
                            Text("All your pop favorites.\nCover: Selena Gomez & R...")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[6])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .foregroundColor(.white)
                            .padding(.trailing, 13)
                            .offset(y: -690)
                            .offset(x: 0)
                        
                        VStack {
                            Text("Top Artists of 2022 India")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .offset(x : -5)
                                .bold()
                            Text("Catch the most streamed\nartist in 2022 #SpotifyWr...")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[7])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .foregroundColor(.white)
                            .padding(.trailing, 13)
                            .offset(y: -690)
                            .offset(x: 0)
                        
                        VStack {
                            Text("All Out 2010s")
                                .font(.system(size: 15))
                                .offset(x : -43)
                                .foregroundColor(.white)
                                .bold()
                            Text("The biggest songs of the\n2010s.")
                                .font(.system(size: 15))
                                .offset(x : -6)
                                .foregroundColor(.white)
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                }
                
                
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: UIScreen.main.bounds.height)
                .frame(width: UIScreen.main.bounds.width + CGFloat(images.count - 1) * 190)
            }
            
            
        }
    }
    
}

struct WeekndView_Previews: PreviewProvider {
    static var previews: some View {
        WeekndView()
    }
}



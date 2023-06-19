//
//  FanView.swift
//  WeekndPlaylist
//
//  Created by Aditya Gaba on 13/06/23.
//


import SwiftUI

struct FanView: View {
    let images = ["Party", "Roy", "Brent", "Tiller", "Jeremih", "6LACK", "Jordan" , "Daniel" , "Miguel" , "Tory" , "Khalid" , "SZA"]
    @State private var showArrow = true
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 34) {
                    
                    VStack {
                        Spacer()
                        Image(images[0])
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y:-690)
                        
                        VStack {
                            Text("PARTNEXTDOOR")
                                .font(.system(size: 15))
                                .offset(x:0)
                                .bold()
                            
                        }
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    
                    VStack {
                        Spacer()
                        Image(images[1])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -690)
                        
                        
                        
                        VStack {
                            Text("Roy Woods")
                                .font(.system(size: 15))
                                .bold()
                                .offset(x:0 ,y : -86)
                                .foregroundColor(.white)
                                .padding(.top, 10)
                        }
                        .offset(y: -614)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[2])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -690)
                        
                        VStack {
                            Text("Brent Faiyaz")
                                .font(.system(size: 15))
                                .offset(x:0 ,y : 0)
                                .foregroundColor(.white)
                                .bold()
                            
                            
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[3])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -690)
                        
                        
                        VStack {
                            Text("Bryson Tiller")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .offset(x : 0)
                                .bold()
                            
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[4])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -690)
                        
                        VStack {
                            Text("Jeremih")
                                .font(.system(size: 15))
                                .offset(x:0)
                                .foregroundColor(.white)
                                .bold()
                            
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[5])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -690)
                        
                        VStack {
                            Text("6LACK")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .offset(x : 0)
                                .bold()
                            
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    
                    VStack {
                        Spacer()
                        Image(images[6])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -690)
                        
                        VStack {
                            Text("Majid Jordan")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .offset(x : 0)
                                .bold()
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    
                    VStack {
                        Spacer()
                        Image(images[7])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -690)
                        VStack {
                            Text("Daniel Caesar")
                                .font(.system(size: 15))
                                .offset(x : 0)
                                .foregroundColor(.white)
                                .bold()
                            
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    VStack {
                        Spacer()
                        Image(images[8])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -690)
                        VStack {
                            Text("Miguel")
                                .font(.system(size: 15))
                                .offset(x : 0)
                                .foregroundColor(.white)
                                .bold()
                            
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                    }
                    VStack {
                        Spacer()
                        Image(images[9])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y: -260)
                        VStack {
                            Text("Tory Lanez")
                                .font(.system(size: 15))
                                .offset(y : 430)
                                .foregroundColor(.white)
                                .bold()
                            
                        }
                        .padding(.top, 10)
                        .offset(y: -700)
                        
                        Image(images[10])
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 170)
                            .clipShape(Circle())
                            .offset(y:-473)
                            .offset(x:225)
                        
                        VStack {
                            Text("Khalid")
                                .font(.system(size: 15))
                                .offset(x:225 , y:215)
                                .bold()
                            
                        }
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .offset(y: -700)
                        
                        
                        
                        
                            Image(images[11])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 170, height: 170)
                                .clipShape(Circle())
                                .offset(y:-690)
                                .offset(x:445)
                            
                            VStack {
                                Text("SZA")
                                    .font(.system(size: 15))
                                    .offset(x:445)
                                    .bold()
                                
                            }
                            .foregroundColor(.white)
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
struct FanView_Previews: PreviewProvider {
    static var previews: some View {
        FanView()
    }
}


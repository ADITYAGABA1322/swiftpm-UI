//
//  MainView.swift
//  WeekndPlaylist
//
//  Created by Aditya Gaba on 17/06/23.
//



import SwiftUI

struct MainView: View {
    @State private var showArrow = true

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            ScrollView(.vertical, showsIndicators: true)  {
                VStack {
                    Spacer()

                    VStack {
                        Image("weekn")
                            .resizable()
                            .frame(height: 430)
                            .alignmentGuide(.top) { _ in -180 }
                            .offset(y: -70)
                            .frame(width: 450)
                            .scaledToFill()
                            .scaledToFit()
                            .overlay(
                                Group {
                                    if showArrow {
                                        Button(action: {
                                            // Handle arrow button action
                                        }) {
                                            Image(systemName: "chevron.left")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .frame(width: 40, height: 40)
                                                .background(
                                                    Circle()
                                                        .stroke(Color.gray, lineWidth: 1.0)
                                                        .frame(width: 40, height: 40)
                                                        .opacity(0.3)
                                                        .background(Color.clear)
                                                )
                                                .padding([.leading, .trailing], 8)
                                        }
                                        .offset(x: -185, y: -220) // Adjust the offset to position the arrow button
                                    }
                                }
                            )

                        Text("The Weeknd")
                            .font(.system(size: 60, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -161)
                            .offset(x: -30)



                        Text("106,846,328 monthly listeners")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                            .offset(y: -150)
                            .offset(x: -102)
                            .bold()
                        
                        HStack {
                            Button(action: {
                                // Handle follow button action
                            }) {
                                Text("Follow")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .background(
                                RoundedRectangle(cornerRadius: .infinity)
                                    .stroke(Color.gray, lineWidth: 1.0)
                                    .frame(width: 90, height: 40)
                            )
                            .padding([.leading, .trailing], 18)
                            .offset(y: -150)
                            .offset(x: 20)
                            
                            Button(action: {
                                // Handle play button action
                            }) {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 25))
                            }
                            .offset(y: -150)
                            .offset(x: 50)
                            
                            Spacer()
                            
                            Button(action: {
                                // Handle shuffle button action
                            }) {
                                Image(systemName: "shuffle")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 27))
                            }
                            .offset(y: -150)
                            .offset(x: -20)
                            
                            Button(action: {
                                        // Handle play button action
                                    }) {
                                        ZStack {
                                            Circle()
                                                .foregroundColor(Color(red: 19/255, green: 225/255, blue: 84/255))
                                                .frame(width: 60, height: 60)
                                            Image(systemName: "play.fill")
                                                .font(.system(size: 30))
                                                .foregroundColor(.black)
                                        }
                                    }
                            .offset(y: -150)
                            .offset(x: -10)
                            
                        }
                        
                        Text("Popular")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -120)
                            .offset(x: -170)
                    }
                    HStack {
                        Text("1")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .padding(.trailing, 8)
                            .offset(x: 10, y: -110)
                        
                        Image("Creepin")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                            .padding(.trailing, 8)
                            .offset(x: 10, y: -110)
                        
                        VStack(alignment: .leading) {
                            Text("Creepin' (with The Weeknd &...")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .lineLimit(1)
                                .padding(.trailing, 28)
                                .offset(y:210)
                            
                            HStack {
                                Image(systemName: "e.square")
                                    .foregroundColor(.gray)
                               
                                    .font(.system(size: 15))
                                    .offset(x:-2 , y : 210)
                                    .bold()
                            
                                  
                                Text("763,409,074")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-8 , y : 210)
                                    .bold()
                                
                            }
                        }
                        .offset(x: 5, y: -320)
                        Button(action: {
                            // Handle play button action
                        }) {
                            
                            Image(systemName: "ellipsis")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                        }
                        .offset(x: -12, y: -110)
                    }
                    HStack {
                        Text("2")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .padding(.trailing, 8)
                            .offset(x: 12, y: -110)
                        
                        Image("DieForYou")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                            .padding(.trailing, 8)
                            .offset(x: 10, y: -110)
                        
                        VStack(alignment: .leading) {
                            Text("Die For You (with Ariana Gran...")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .lineLimit(1)
                                .padding(.trailing, 32)
                                .offset(y:210)
                            
                            HStack {
                                Text("446,781,604")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-1 , y : 210)
                                    .bold()
                                
                            }
                        }
                        .offset(x: 5, y: -320)
                        Button(action: {
                            // Handle play button action
                        }) {
                            
                            Image(systemName: "ellipsis")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                        }
                        .offset(x: -15, y: -110)
                    }
                    HStack {
                        Text("3")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .padding(.trailing, 8)
                            .offset(x: -69, y: -110)
                        
                        Image("Starboy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                            .padding(.trailing, 18)
                            .offset(x: -70, y: -110)
                        
                        VStack(alignment: .leading) {
                            Text("Die For You ")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .lineLimit(1)
                                .padding(.trailing, 28)
                                .offset(x:-90 , y:210)
                            
                            HStack {
                                
                                Text("1,574,308,205")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-91 , y : 210)
                                    .bold()
                                
                            }
                        }
                        .offset(x: 5, y: -320)
                        Button(action: {
                            // Handle play button action
                        }) {
                            
                            Image(systemName: "ellipsis")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                        }
                        .offset(x:63, y: -110)
                    }
                    HStack {
                        Text("4")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .padding(.trailing, 8)
                            .offset(x: -79, y: -110)
                        
                        Image("Starboy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                            .padding(.trailing, 3)
                            .offset(x: -80, y: -110)
                        
                        VStack(alignment: .leading) {
                            Text("Starboy")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .lineLimit(1)
                                .padding(.trailing, 2)
                                .offset(x:-87 , y:210)
                            
                            HStack {
                                Image(systemName: "e.square")
                                    .foregroundColor(.gray)
                                // .background(.gray)
                                    .font(.system(size: 15))
                                    .offset(x:-90  , y : 210)
                                    .bold()
                                
                                Text("2,495,611,447")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-95 , y : 210)
                                    .bold()
                                
                            }
                        }
                        .offset(x: 5, y: -320)
                        Button(action: {
                            // Handle play button action
                        }) {
                            
                            Image(systemName: "ellipsis")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                        }
                        .offset(x:73, y: -110)
                    }
                    
                    HStack {
                        Text("5")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .padding(.trailing, 8)
                            .offset(x: -69, y: -110)
                        
                        Image("BlindingLights")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                            .padding(.trailing, -5)
                            .offset(x: -70, y: -110)
                        
                        VStack(alignment: .leading) {
                            Text("Blinding Lights")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .lineLimit(1)
                                .padding(.trailing, 28)
                                .offset(x:-70 , y:210)
                            
                            HStack {
                                
                                
                                Text("3,641,452,285")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-71 , y : 210)
                                    .bold()
                                
                            }
                        }
                        .offset(x: 5, y: -320)
                        Button(action: {
                            // Handle play button action
                        }) {
                            
                            Image(systemName: "ellipsis")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                        }
                        .offset(x:60, y: -110)
                        
                        
                    }
                    
                    Text("Artist Pick")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .offset(y: -90)
                        .offset(x: -160)
                    
                    HStack {
                        Text("Posted by the Weeknd")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -120)
                            .offset(x: 156)
                        
                        Image("Artist")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.white)
                            .padding(.trailing, 88)
                            .offset(x: -180, y: -90)
                            .overlay(
                                
                                Group {
                                    if showArrow {
                                        Button(action: {
                                            // Handle arrow button action
                                        }) {
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.white)
                                                .font(.system(size: 25))
                                                .frame(width: 40, height: 40)
                                                .padding([.leading, .trailing], 8)
                                        }
                                        .offset(x: 125, y: -90) // Adjust the offset to position the arrow button
                                    }
                                }
                                
                                
                                
                                
                                
                                
                                
                                
                            )
                        
                        
                        Image("weekn")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .offset(x: -250, y: -120)
                    }
                    
                    HStack {
                        Text("The Idol Official Playlist")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -150)
                            .offset(x: 43)
                        
                        Text("Playlist")
                            .font(.system(size: 13))
                            .foregroundColor(.white)
                            .offset(y: -125)
                            .offset(x: -165)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    
                    
                }
                
                
                HStack{
                    Text("Popular releases")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .offset(y: -90)
                        .offset(x: -130)
                    
                    
                    
                    
                    
                }
                Image("HBO")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .padding(.trailing, 88)
                    .offset(x: -114, y: -90)
                
                
                Text("The Idol Episode 3 (Music from...")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .offset(y: -170)
                    .offset(x: 60)
                
                Text("Latest release" + " \u{00B7} " + "Single")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .offset(y: -170)
                    .offset(x: -15.5)
                
                
                Image("Starboy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .padding(.trailing, 88)
                    .offset(x: -114, y: -130)
                
                
                Text("Starboy")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .offset(y: -215)
                    .offset(x: -57)
                
                Text("2016" + " \u{00B7} " + " Album")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .offset(y: -215)
                    .offset(x: -49)
                
                
                
                
                HStack{
                    Image("BlindingLights")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .padding(.trailing, 88)
                        .offset(x: -6, y: -170)
                    
                    
                    Text("After Hours")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .offset(y: -175)
                        .offset(x: -87)
                    
                    Text("2020 " + " \u{00B7} " + " Album")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .offset(y: -153)
                        .offset(x: -204)
                    
                    
                    
                }
                
                VStack{
                    Image("weeknds")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .padding(.trailing, 88)
                        .offset(x: -114, y: -160)
                    
                    
                    Text("My Dear Melancholy,")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .offset(y: -235)
                        .offset(x: -2)
                    
                    
                    Text("2018 " + " \u{00B7} " + " Album")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .offset(y: -233)
                        .offset(x: -54)
                    
                    
                    Button(action: {
                        // Handle follow button action
                    }) {
                        Text("See discography")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.white)
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: .infinity)
                            .stroke(Color.gray, lineWidth: 1.0)
                            .frame(width: 170, height: 30)
                    )
                    .padding([.leading, .trailing], 18)
                    .offset(y: -160)
                    .offset(x: -3)
                    
                    
                    
                    VStack{
                        Text("Upcoming releases")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -100)
                            .offset(x : -113)
                        Image("Idol")
                            .resizable()
                            .frame(height: 330)
                            .alignmentGuide(.top) { _ in -180 }
                            .offset(y: -55)
                            .frame(width: 430)
                            .scaledToFill()
                            .scaledToFit()
                        
                            .overlay(
                                Group {
                                    if showArrow {
                                        Button(action: {
                                            // Handle arrow button action
                                        }) {
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                                .frame(width: 40, height: 40)
                                                .background(
                                                    Circle()
                                                        .stroke(Color.gray, lineWidth: 1.0)
                                                        .frame(width: 40, height: 40)
                                                        .opacity(0.3)
                                                        .background(Color.clear)
                                                )
                                                .padding([.leading, .trailing], 8)
                                        }
                                        .offset(x: 185, y: 70) // Adjust the offset to position the arrow button
                                    }
                                }
                            )
                        
                        Text("The Idol Vol. 1(Music from the HBO...")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -115)
                            .offset(x: -30)
                        
                        
                        Text("Album")
                            .font(.system(size: 15 , weight:  .bold))
                            .foregroundColor(.white)
                            .offset(y: -155)
                            .offset(x: -176)
                        
                        Text("Coming Soon")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .offset(y: -133)
                            .offset(x: -154)
                        
                        
                    }
                    
                    Text("Featuring the Weeknd")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .offset(y: -30)
                        .offset(x : -103)
                    
                    WeekndView()
                    VStack {
                        Text("Live Events")
                            .font(.system(size: 20))
                            .offset(x : -148)
                            .foregroundColor(.white)
                            .bold()
                            .offset(y: -640)
                        Text("The Weeknd")
                            .font(.system(size: 18))
                            .offset(x : -90)
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: 10 , y:-605)
                        Text("Sat, 7 PM" + " \u{00B7} " + "Tele2 Arena, Stockholm ")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .offset(x: -5 , y:-602)
                            .bold()
                        
                        
                        
                        
                        Text("About")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .offset(x:-175 , y:-500)
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color(red: 40/255, green: 40/255, blue: 40/255))
                            
                                .cornerRadius(2)
                            
                            
                            Text("JUN\n 17")
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(.white)
                            
                        }
                        
                        .offset(x:-170 , y:-690)
                        
                        Button(action: {
                            // Handle follow button action
                        }) {
                            Text("See all events")
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(.white)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: .infinity)
                                .stroke(Color.gray, lineWidth: 1.0)
                                .frame(width: 170, height: 30)
                        )
                        .padding([.leading, .trailing], 18)
                        .offset(y: -660)
                        .offset(x: -3)
                        
                    }
                    
                    
                    VStack{
                        Image("week")
                            .resizable()
                            .frame(height: 400)
                            .alignmentGuide(.top) { _ in -180 }
                            .offset(y: -575)
                            .frame(width: 444)
                            .scaledToFill()
                            .scaledToFit()
                            .overlay(
                                
                                Group {
                                    if showArrow {
                                        Button(action: {
                                            // Handle arrow button action
                                        }) {
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.white)
                                                .font(.system(size: 25))
                                                .frame(width: 40, height: 40)
                                                .padding([.leading, .trailing], 8)
                                        }
                                        .offset(x: 175, y: -420) // Adjust the offset to position the arrow button
                                    }
                                }
                                
                                
                                
                                
                                
                                
                                
                                
                            )
                        Text("VERIFIED ARTIST")
                            .font(.system(size: 13))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: -118, y: -954)
                        
                        Text("106,683,163")
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: -138, y: -703)
                        Text("MONTHLY LISTNERS")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .offset(x: -14, y: -720)
                        
                        Text("The Weeknd took over pop music &")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: -46, y: -710)
                        
                        Text("culture on his own terms filtering R&B,")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: -31, y: -710)
                        Text("Pop,& hip-hop through an ambitious wi...")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: -20, y: -710)
                        
                        Image("Tick")
                            .resizable()
                            .frame(height: 30)
                            .alignmentGuide(.top) { _ in -180 }
                            .offset(x: -190, y: -1092)
                            .frame(width: 30)
                            .scaledToFill()
                            .scaledToFit()
                        
                        
                        ZStack {
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 120, height: 120)
                                .offset(x : 148 , y:-1200)
                            
                            VStack {
                                Text("1st")
                                    .font(.system(size: 22))
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .offset(x : 145 , y:-1190)
                                
                                Text("\n in the world")
                                    .font(.system(size: 16))
                                    .font(.title)
                                
                                    .offset(x : 145 , y:-1210)
                            }
                            .foregroundColor(.black)
                            
                        }
                        .aspectRatio(contentMode: .fit)
                        
                    }
                    
                    
                    
                    
                    
                    VStack {
                        
                        Text("Artist Playlists")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -820)
                            .offset(x: -133)
                        
                        
                        
                        Image("week")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .padding(.trailing, 88)
                            .offset(x: -57, y: -810)
                        
                        
                        
                        Text("The Weeknd - Essential")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -800)
                            .offset(x: -101)
                        
                        Text("Playlist")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -800)
                            .offset(x: -100)
                        
                        Text("Fan also like")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: -720)
                            .offset(x: -143)
                        
                        
                        
                        
                            .fixedSize(horizontal: false, vertical: true)
                        FanView()
                        
                            .background(Color.clear)
                            .offset(y: -730)
                     
                    }
             
                }
            }
            .padding(.bottom, -1430) // Remove bottom padding
        }
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}







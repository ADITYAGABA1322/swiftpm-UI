//BannerView.swift
//WeekndPlaylist
//
//Created by Aditya Gaba on 15/06/23.




import SwiftUI



struct BannerView: View {
    var safeArea: EdgeInsets
    var size: CGSize

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ArtWork()
                
                GeometryReader { proxy in
                    // Mark: Since we Ignored top edge
//                    let minY = proxy.frame(in: .named("SCROLL")).minY-safeArea.top
                    
//                    Button(action: {}) {
//                        Image(systemName: "play.circle.fill")
//                            .font(.callout)
//                            .fontWeight(.bold)
//                            .foregroundColor(.white)
//                            .padding(.horizontal, 45)
//                            .padding(.vertical, 12)
//                            .background {
//                                Capsule()
//                                    .fill(Color.green)
//                            }
//                    }
                    
//
//                            Button(action: {
//                                // Handle play button action
//                            }) {
//                                Image(systemName: "play.circle.fill")
//                                    .foregroundColor(Color(red: 19/255, green: 225/255, blue: 84/255))
//                                    .font(.system(size: 54))
//                                    .offset(x: 170, y: 30)
//                            }
////
//                      .frame(maxWidth: .infinity, maxHeight: .infinity)
                      //  .offset(y: minY < 10 ? -(minY-10) : 0)
                    
                    

                    
                }
                .frame(height: 50)
                .padding(.top, -34)
                .zIndex(1)
                VStack {
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
                    .offset(y: 25)
                    .offset(x: -160)
                    
                    Text("106,846,328 monthly listeners")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                        .offset(y: -35)
                        .offset(x: -102)
                        .bold()
                    
                    Button(action: {
                        // Handle play button action
                    }) {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.gray)
                            .font(.system(size: 25))
                    }
                    .offset(y: -8)
                    .offset(x: -75)
                    
                    Spacer()
                    
                    Button(action: {
                        // Handle shuffle button action
                    }) {
                        Image(systemName: "shuffle")
                            .foregroundColor(.gray)
                            .font(.system(size: 27))
                    }
                    .offset(y: -35)
                    .offset(x: 100)
                    
                    
                    Button(action: {
                                // Handle play button action
                            }) {
                                ZStack {
                                    Circle()
                                        .foregroundColor(Color(red: 19/255, green: 225/255, blue: 84/255))
                                        .frame(width: 55, height: 55)
                                    Image(systemName: "play.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(.black)
                                }
                            }
                    .offset(y: -80)
                    .offset(x: 170)

                }
                .padding(.top, 10)
//               AlbumView(albums: albums)
//                    .offset(y:70)
               ContentView()
                    .background(Color.clear)
                    .offset(y: -50)
                
                .zIndex(0)
            }
            .overlay(alignment: .top){
                HeaderView()
            }
            
        }
        .coordinateSpace(name: "SCROLL")
    }

    @ViewBuilder
    func ArtWork() -> some View {
        let height = size.height * 0.45
        GeometryReader { proxy in
            let size = proxy.size
            let minY = proxy.frame(in: .named("SCROLL")).minY
            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
            Image("weekn")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: size.height + (minY>0 ? minY : 0))
                .clipped()
            
                .overlay(content:{
                    
                    ZStack(alignment: .bottom){
                        Rectangle()
                            .fill(
                                .linearGradient(colors: [
                                    .black.opacity(0 - progress),
                                    .black.opacity(0 - progress),
                                    .black.opacity(0 - progress),
                                    .black.opacity(0 - progress),
                                    .black.opacity(0 - progress),
                                   
                                
                                ],startPoint: .top , endPoint: .bottom)
                            )
                        
                        
                        
                        VStack(spacing : 0){
                            Text("The Weeknd")
                                .font(.system(size: 60, weight: .bold))
                                .foregroundColor(.white)
                                .offset(y: 60)
                                .offset(x: -40)
    
                        }
                        
                        
                        .padding(.bottom , 55)
                        .opacity(1 + (progress>0 ? -progress : progress ))
                        // Moving with ScrollView
                        .offset(y:minY < 0 ? minY : 0 )
                    }
                    
                    
                })
                .offset(y:-minY)
        }
        .frame(height: height + safeArea.top)
    }
    
    
    
    

    @ViewBuilder
    func AlbumView(albums: [Album]) -> some View {
        VStack(spacing: 25) {
            ForEach(albums.indices  , id: \.self) { index in
                HStack(spacing: 25) {
                    Text("\(index + 1)")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)

                    VStack(alignment: .leading, spacing: 6) {
                        Text(albums[index].albumName)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("2.222444")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(15)
    }
    
    
    
    
    @ViewBuilder
    func HeaderView()->some View{
        GeometryReader{proxy in
            let minY = proxy.frame(in: .named("SCROLL")).minY
            let height = size.height * 0.45
            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
            let titleProgress = minY/height
            HStack(spacing : 15){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "chevron.left")
                        .font(.title3)
                        .foregroundColor(.white)
                })
                
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                    Text("FOLLOWING")
//                        .font(.caption)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                        .padding(.horizontal , 10)
//                        .padding(.vertical , 6)
//                        .border(.red ,width:1.5)
//                })
     //           .opacity(1 + progress)
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                    Image(systemName: "ellipsis")
//                        .font(.title3)
//                        .foregroundColor(.white)
//                })
                
                

            }
            .overlay(content:{
              
              
                
                 Text("The Weeknd")
                    .fontWeight(.semibold)
                // your choice to set the tittle
                    .offset(y : -titleProgress > 1 ? 0 :45)
                    .animation(.easeInOut(duration: 0.25), value: -titleProgress > 1)
                    .clipped()
                
              
                if(-titleProgress>1 ){
//                    Button(action: {
//                        // Handle play button action
//                    }) {
//                        Image(systemName: "play.circle.fill")
//                            .foregroundColor(Color(red: 19/255, green: 225/255, blue: 84/255))
//                            .font(.system(size: 54))
//                            .offset(y: -titleProgress > 1 ? 0 : 45)
//                            .animation(.easeInOut(duration: 0.25), value: -titleProgress > 1)
//                            .clipped()
//                            .offset(y: 30)
//                            .offset(x:170)
//
//                    }
                    Button(action: {
                                // Handle play button action
                            }) {
                                ZStack {
                                    Circle()
                                        .foregroundColor(Color(red: 19/255, green: 225/255, blue: 84/255))
                                        .frame(width: 55, height: 55)
                                    Image(systemName: "play.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(.black)
                                }
                            
                               
                                .offset(y: -titleProgress > 1 ? 0 : 45)
                                .animation(.easeInOut(duration: 0.25), value: -titleProgress > 1)
                                .clipped()
                                .offset(y: 30)
                                .offset(x:170)
                            }
                }

                
                
            })
            .padding(.top , safeArea.top + 10)
            .padding([.horizontal , .bottom] , 15)
            
            .background(content:{
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 0.7, green: 0.0, blue: 0.0), Color(red: 0.4, green: 0.0, blue: 0.0)]),
                    startPoint: .top,
                    endPoint: .bottom
                )

                .opacity(-progress > 1.25 ? 1.25 : 0)
            })
            .offset(y : -minY)
        }
        .frame(height: 35)
        
    }

}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}



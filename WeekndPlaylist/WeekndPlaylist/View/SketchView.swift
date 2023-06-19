//
//  SketchView.swift
//  WeekndPlaylist
//
//  Created by Aditya Gaba on 15/06/23.
//



import SwiftUI

struct SketchView: View {
    @State private var showArrow = true
    @State private var showBanner = true
    @State private var scrollViewOffset: CGFloat = 0

    var body: some View {


        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            // Your existing content here

            VStack {
                Spacer()

                // Banner View
                HStack {
                    Button(action: {
                        // Handle chevron button action
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .frame(width: 40, height: 40)
                            .offset(x:-10 , y:-10)
                            .padding([.leading, .trailing], 0)
                    }

                    Text("The Weeknd")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .offset(x : 85 , y:-8)


                    Spacer()

                    Button(action: {
                        // Handle play button action
                    }) {
                        Image(systemName: "play.circle.fill")
                            .foregroundColor(Color(red: 19/255, green: 225/255, blue: 84/255))
                            .font(.system(size: 54))
                    }
                    .offset(y: 43)
                    .offset(x: 10)
                }
                .padding(.horizontal)
                .padding(.top, 16)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(red: 0.7, green: 0.0, blue: 0.0), Color(red: 0.4, green: 0.0, blue: 0.0)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )



                Spacer()
            }
        }

    }
}




struct SketchView_Previews: PreviewProvider {
    static var previews: some View {
        SketchView()
    }
}





//
//  BannerView.swift
//  WeekndPlaylist
//
//  Created by Aditya Gaba on 15/06/23.

//import SwiftUI
//
//
//
//struct BannerView: View {
//    var safeArea: EdgeInsets
//    var size: CGSize
//
//    var body: some View {
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack {
//                ArtWork()
//                GeometryReader { proxy in
//                    // Mark: Since we Ignored top edge
//                    let minY = proxy.frame(in: .named("SCROLL")).minY-safeArea.top
//
//                    Button(action: {}) {
//                        Text("SHUFFLE PLAY")
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
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .offset(y: minY<50 ? -(minY-50) : 0)
//                }
//                .frame(height: 50)
//                .padding(.top, -34)
//                .zIndex(1)
//                VStack {
//                    Text("Popular")
//                        .fontWeight(.heavy)
//                }
//                .padding(.top, 10)
//                AlbumView(albums: albums)
//                .zIndex(0)
//            }
//            .overlay(alignment: .top){
//                HeaderView()
//            }
//
//        }
//        .coordinateSpace(name: "SCROLL")
//    }
//
//    @ViewBuilder
//    func ArtWork() -> some View {
//        let height = size.height * 0.45
//        GeometryReader { proxy in
//            let size = proxy.size
//            let minY = proxy.frame(in: .named("SCROLL")).minY
//            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
//            Image("weekn")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: size.width, height: size.height + (minY>0 ? minY : 0))
//                .clipped()
//                .overlay(content:{
//                    ZStack(alignment: .bottom){
//                        Rectangle()
//                            .fill(
//                                .linearGradient(colors: [
//                                    .black.opacity(0 - progress),
//                                    .black.opacity(0.1 - progress),
//                                    .black.opacity(0.3 - progress),
//                                    .black.opacity(0.5 - progress),
//                                    .black.opacity(0.8 - progress),
//                                    .black.opacity(1),
//
//                                ],startPoint: .top , endPoint: .bottom)
//                            )
//
//                        VStack(spacing : 0){
//                            Text("The\n Weeknd")
//                                .font(.system(size: 45))
//                                .fontWeight(.bold)
//                                .multilineTextAlignment(.center )
//
//                            Text("137,872,470 Monthly Listners" . uppercased())
//                                .font(.caption)
//                                .fontWeight(.bold)
//                                .foregroundStyle(.gray)
//                                .padding(.top , 15)
//                        }
//                        .padding(.bottom , 55)
//                        .opacity(1 + (progress>0 ? -progress : progress ))
//                        // Moving with ScrollView
//                        .offset(y:minY < 0 ? minY : 0 )
//                    }
//                })
//                .offset(y:-minY)
//        }
//        .frame(height: height + safeArea.top)
//    }
//
//    @ViewBuilder
//    func AlbumView(albums: [Album]) -> some View {
//        VStack(spacing: 25) {
//            ForEach(albums.indices  , id: \.self) { index in
//                HStack(spacing: 25) {
//                    Text("\(index + 1)")
//                        .font(.callout)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.gray)
//
//                    VStack(alignment: .leading, spacing: 6) {
//                        Text(albums[index].albumName)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                        Text("2.222444")
//                            .font(.caption)
//                            .foregroundColor(.gray)
//                    }
//                    .frame(maxWidth: .infinity, alignment: .leading)
//
//                    Image(systemName: "ellipsis")
//                        .foregroundColor(.gray)
//                }
//            }
//        }
//        .padding(15)
//    }
//
//    @ViewBuilder
//    func HeaderView()->some View{
//        GeometryReader{proxy in
//            let minY = proxy.frame(in: .named("SCROLL")).minY
//            let height = size.height * 0.45
//            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
//            let titleProgress = minY/height
//            HStack(spacing : 15){
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                    Image(systemName: "chevron.left")
//                        .font(.title3)
//                        .foregroundColor(.white)
//                })
//
//
//                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
//
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                    Text("FOLLOWING")
//                        .font(.caption)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                        .padding(.horizontal , 10)
//                        .padding(.vertical , 6)
//                        .border(.red ,width:1.5)
//                })
//                .opacity(1 + progress)
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                    Image(systemName: "ellipsis")
//                        .font(.title3)
//                        .foregroundColor(.white)
//                })
//
//            }
//            .overlay(content:{
//                 Text("The Weeknd")
//                    .fontWeight(.semibold)
//                // your choice to set the tittle
//                    .offset(y : -titleProgress > 0.75 ? 0 :45)
//                    .animation(.easeInOut(duration: 0.25), value: -titleProgress > 0.75)
//                    .clipped()
//            })
//            .padding(.top , safeArea.top + 10)
//            .padding([.horizontal , .bottom] , 15)
//            .background(content:{
//                Color.black
//                    .opacity(-progress > 1 ? 1 : 0)
//            })
//            .offset(y : -minY)
//        }
//        .frame(height: 35)
//
//    }
//
//}
//
//struct BannerView_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloView()
//    }
//}
//





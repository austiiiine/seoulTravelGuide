import SwiftUI

struct SpotDetail: View {
  let spot: Spot
  @State private var saved = false

  var body: some View {


    ZStack(alignment: .bottom) {
      ScrollView {
        VStack(alignment: .leading, spacing: 0) {
          
          // 封面圖
          ZStack(alignment: .bottomLeading) {
            GeometryReader { geometry in
              let width = geometry.size.width

              Image(spot.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: width * 3 / 4)
                .clipped()
            }
            .frame(height: UIScreen.main.bounds.width * 3 / 4)

            LinearGradient(
              gradient: Gradient(stops: [
                .init(color: Color("Accent900").opacity(0.0), location: 0.6),
                .init(color: Color("Accent900").opacity(0.9), location: 1.0)
              ]),
              startPoint: .top,
              endPoint: .bottom
            )

            // 景點名稱
            VStack(alignment: .leading, spacing: 4) {
              Text(spot.name)
                .font(.title.bold())
                .foregroundColor(.white)
            }
            .padding()
          }
          
          // 景點資訊
          VStack(spacing: 24) {
            
            // 簡介
            Text(spot.description)
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.horizontal)
              .font(.body)
            
            Divider()
              .background(Color.gray.opacity(0.3))  // 更淡的顏色
              .padding(.horizontal)
            
            // metadata
            VStack(alignment: .leading, spacing: 24) {
              DetailSection(icon: "clock", title: "營業時間", content: spot.openHours)
              DetailSection(icon: "mappin.and.ellipse", title: "地址", content: spot.address)
              DetailSection(icon: "cablecar.fill", title: "交通方式", content: spot.transport)
              // 照片carousel
              VStack(alignment: .leading, spacing: 12) {
                DetailSection(icon: "photo", title: "照片", content: nil)

                TabView {
                  ForEach(spot.photos, id: \.self) { photo in
                    Image(photo)
                      .resizable()
                      .scaledToFill()
                      .frame(height: 220)
                      .cornerRadius(12)
                      .clipped()
                  }
                }
                .frame(height: 220)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
              }
              .padding(.bottom, 80)
            }
            .padding(.horizontal)
          }
          .padding(.vertical, 24)
        }
      }
      .ignoresSafeArea(edges: .top)

      // 加入收藏
      Button(action: {
        saved.toggle()
      }) {
        HStack(alignment: .center) {
          Image(systemName: saved ? "bookmark.fill" : "bookmark")
          Text("加入收藏")
            .font(.title3)
            .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.accentColor)
        .foregroundColor(.white)
        .cornerRadius(12)
      }
      .padding()
      .background(Color.white)
    }
  }
}

#Preview {
  let sampleSpot = Spot(
    imageName: "madeby1",
    name: "made by 延南店",
    description: "made by 是弘大與延南洞著名的文具文創店，販售貼紙、明信片等，還提供 DIY 筆記本服務，是文具控必訪。",
    openHours: "12:00-22:00",
    address: "11, Yeonhui-ro, Mapo-gu, Seoul, 南韓",
    transport: "地鐵2號線 弘大入口站 9號出口",
    photos: ["madeby1", "madeby2", "madeby3"],
    category: "文創小物"
  )

  SpotDetail(spot: sampleSpot)
}

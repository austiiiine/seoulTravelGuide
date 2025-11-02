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
              DetailSection(icon: "tram.fill", title: "交通方式", content: "地鐵2號線 \(spot.address)")
              // 照片carousel
              VStack(spacing: 12) {
                DetailSection(icon: "photo", title: "相片集", content: nil)
                ScrollView(.horizontal, showsIndicators: false) {
                  HStack(spacing: 12) {
                    ForEach(spot.photos, id: \.self) { photo in
                      Image(photo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 160, height: 120)
                        .clipped()
                        .cornerRadius(8)
                    }
                  }
              }

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

//#Preview {
//  let sampleSpot = Spot(
//    imageName: "grilledEel", // 要記得加一張示意圖
//    name: "鳳川鰻魚 풍천장어",
//    description: "「風川碳烤鰻魚」是弘大延南洞的烤白燒鰻老店，開業經營超過20年，堅持只賣新鮮韓國國產白鰻，肉質鮮嫩彈性佳、幾乎無刺，值得一試！鰻魚由店員協助桌邊炭火烤製，表皮微微金黃酥脆，烤出自然鹽香，讓人一入口就秒懂它的魅力。",
//    openHours: "11:30–22:20（15:30–16:30 為午後休息）",
//    address: "首爾市麻浦區延南洞568-25",
//    phone: "+82-2-332-8361",
//    photos: ["grilledEel", "grilledEel", "grilledEel"]
//  )
//
//  SpotDetail(spot: sampleSpot)
//}

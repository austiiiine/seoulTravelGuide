import SwiftUI

struct SpotList: View {
  let category: String

  let restaurants = [
    Spot(
      imageName: "grilledEel", // 要記得加一張示意圖
      name: "鳳川鰻魚 풍천장어",
      description: "「風川碳烤鰻魚」是弘大延南洞的烤白燒鰻老店，開業經營超過20年，堅持只賣新鮮韓國國產白鰻，肉質鮮嫩彈性佳、幾乎無刺，值得一試！鰻魚由店員協助桌邊炭火烤製，表皮微微金黃酥脆，烤出自然鹽香，讓人一入口就秒懂它的魅力。",
      openHours: "11:30–22:20（15:30–16:30 為午後休息）",
      address: "首爾市麻浦區延南洞568-25",
      phone: "+82-2-332-8361",
      photos: ["grilledEel", "grilledEel", "grilledEel"],
      category: "弘大"
    ),
    Spot(
      imageName: "grilledEel", // 要記得加一張示意圖
      name: "鳳川鰻魚 풍천장어",
      description: "「風川碳烤鰻魚」是弘大延南洞的烤白燒鰻老店，開業經營超過20年，堅持只賣新鮮韓國國產白鰻，肉質鮮嫩彈性佳、幾乎無刺，值得一試！鰻魚由店員協助桌邊炭火烤製，表皮微微金黃酥脆，烤出自然鹽香，讓人一入口就秒懂它的魅力。",
      openHours: "11:30–22:20（15:30–16:30 為午後休息）",
      address: "首爾市麻浦區延南洞568-25",
      phone: "+82-2-332-8361",
      photos: ["grilledEel", "grilledEel", "grilledEel"],
      category: "明洞"
    ),
    Spot(
      imageName: "grilledEel", // 要記得加一張示意圖
      name: "鳳川鰻魚 풍천장어",
      description: "「風川碳烤鰻魚」是弘大延南洞的烤白燒鰻老店，開業經營超過20年，堅持只賣新鮮韓國國產白鰻，肉質鮮嫩彈性佳、幾乎無刺，值得一試！鰻魚由店員協助桌邊炭火烤製，表皮微微金黃酥脆，烤出自然鹽香，讓人一入口就秒懂它的魅力。",
      openHours: "11:30–22:20（15:30–16:30 為午後休息）",
      address: "首爾市麻浦區延南洞568-25",
      phone: "+82-2-332-8361",
      photos: ["grilledEel", "grilledEel", "grilledEel"],
      category: "弘大"
    )
  ]

  var filtered: [Spot] {
    restaurants.filter { $0.category == category }
  }

  var body: some View {
    NavigationStack {
      List {
        ForEach(0..<filtered.count) { index in
          let restaurant = filtered[index]
          NavigationLink {
            SpotDetail(spot: restaurant)
          } label: {
            SpotRow(spot: restaurant)
          }
        }
      }
      .navigationTitle(category + "美食")
    }
  }
}


#Preview {
  SpotList(category: "弘大")
}


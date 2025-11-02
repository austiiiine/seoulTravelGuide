import SwiftUI

struct ContentView: View {
    let regions = ["弘大美食", "明洞美食", "聖水洞美食", "東大門美食", "江南美食"]
  let shopTypes = ["文創小物", "韓流周邊", "遊樂園"]
    var body: some View {

      TabView {
        // 美食地圖
        Tab("美食地圖", systemImage: "takeoutbag.and.cup.and.straw.fill") {
          NavigationStack {
            ScrollView {
              VStack(spacing: 20) {
                ForEach(regions, id: \.self) { region in
                  NavigationLink(destination: SpotList(category: region)) {
                    CategoryRow(category: region)
                  }
                }
              }
              .padding()
            }
            .navigationTitle("美食地圖")
          }
        }
        // 必吃必買
        Tab("必玩必買", systemImage: "handbag.fill") {
          NavigationStack {
            ScrollView {
              VStack(spacing: 20) {
                ForEach(shopTypes, id: \.self) { shopType in
                  NavigationLink(destination: SpotList(category: shopType)) {
                    CategoryRow(category: shopType)
                  }
                }
              }
              .padding()
            }
            .navigationTitle("美食地圖")
          }
        }
        // 收藏（僅作為模擬效果用，並非真的有收藏功能）
        Tab("已收藏", systemImage: "bookmark.fill") {
          NavigationStack {
            List {
              SpotRow(spot: Spot(
                imageName: "jangin2",
                name: "匠人鐵板雞（弘大店）",
                description: "匠人鐵板雞（장인닭갈비）主打無骨鐵板炒雞排，是韓國知名連鎖店，使用100%莫札瑞拉起司搭配秘製甜辣醬料調味。菜單簡潔，主要為無骨炒雞排，有不辣、中辣、大辣三種辣度可選，可加點起司、年糕、泡麵、冬粉、熱狗等配料，餐後推薦加點炒飯結尾。店內生菜與小菜可自取，深受韓國年輕人和遊客喜愛。",
                openHours: "11:00-01:00",
                address: "서울 마포구 어울마당로 111-1 1층",
                transport: "地鐵2號線 弘大出口站 9號出口",
                photos: ["jangin1", "jangin2", "jangin3"],
                category: "弘大美食"
              ))
              SpotRow(spot: Spot(
                imageName: "dalimak1",
                name: "Dalimak 小熊麵包",
                description: "Dalimak 小熊麵包是聖水洞人氣麵包店，主打造型可愛的手工烘焙麵包與甜點，口味豐富多樣，用料講究且不使用人工添加物。店鋪環境溫馨，常吸引甜點愛好者與年輕人前來品嘗。",
                openHours: "09:00-22:00",
                address: "서울 성동구 연무장길 38-2 1층",
                transport: "地鐵2號線 聖水站 4號出口",
                photos: ["dalimak1"],
                category: "聖水洞美食"
              ))
              SpotRow(spot: Spot(
                imageName: "object1",
                name: "Object 弘大店",
                description: "宛如一座生活美學的靜謐角落，Object 是一間散發極簡美學的設計選物店，將日常物件化作藝術品呈現，店內以溫潤的木質調和清冷的水泥牆為基底，空間氛圍靜謐且純粹。",
                openHours: "12:00-20:00 (每週一公休) ",
                address: "326–2 Seogyo-dong, Mapo-gu, Seoul",
                transport: "地鐵2號線 弘大入口站 9號出口",
                photos: ["object1", "object2", "object3"],
                category: "文創小物"
              ))
              SpotRow(spot: Spot(
                imageName: "lotte1",
                name: "樂天世界",
                description: "韓國人氣主題樂園，部分設施為室內，無懼天氣，常見於韓綜韓劇拍攝，是旅客必玩樂園。",
                openHours: "10:00-21:00",
                address: "240 Olympic-ro, Songpa District, Seoul, 南韓",
                transport: "地鐵2或8號線 蠶室站 4號出口",
                photos: ["lotte1", "lotte2", "lotte3"],
                category: "遊樂園"
              ))
            }
            .navigationTitle("已收藏")
            .listStyle(.plain)
          }

        }
      }

    }
}

#Preview {
    ContentView()
}

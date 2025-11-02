import SwiftUI

struct SpotList: View {
  let category: String

  let spots: [Spot] = [
    // 弘大美食
    Spot(
      imageName: "jangin2",
      name: "匠人鐵板雞（弘大店）",
      description: "匠人鐵板雞（장인닭갈비）主打無骨鐵板炒雞排，是韓國知名連鎖店，使用100%莫札瑞拉起司搭配秘製甜辣醬料調味。菜單簡潔，主要為無骨炒雞排，有不辣、中辣、大辣三種辣度可選，可加點起司、年糕、泡麵、冬粉、熱狗等配料，餐後推薦加點炒飯結尾。店內生菜與小菜可自取，深受韓國年輕人和遊客喜愛。",
      openHours: "11:00-01:00",
      address: "서울 마포구 어울마당로 111-1 1층",
      transport: "地鐵2號線 弘大出口站 9號出口",
      photos: ["jangin1", "jangin2", "jangin3"],
      category: "弘大美食"
    ),

    Spot(
      imageName: "toma1",
      name: "Bistro TOMA",
      description: "Bistro TOMA 是位於弘大的特色義式小餐館，以提供新鮮健康食材為主，菜色包含多款經典義大利麵與烤物，環境雅致舒適，適合午餐或晚餐聚會。餐廳重視用餐品質，使用當季食材，搭配精心調製的醬料與香草，料理風味極佳。",
      openHours: "11:30-21:30，最後點餐時間 20:30",
      address: "서울 마포구 월드컵북로6길 61 연남토마",
      transport: "地鐵2號線 弘大出口站 2號出口",
      photos: ["toma1", "toma2"],
      category: "弘大美食"
    ),

    Spot(
      imageName: "hdg1",
      name: "Hotel De GGOODD",
      description: "Hotel De GGOODD 是弘大區的時尚咖啡餐飲空間，提供多元輕食與飲品選擇，以高品質手作料理和舒適氛圍著稱。餐廳設計風格現代且具藝術感，適合朋友聚餐或自我放鬆。",
      openHours: "11:00-20:30，最後點餐時間 19:00",
      address: "서울 마포구 동교로46길 7 101호 1.5층",
      transport: "地鐵2號線 弘大出口站 3號出口",
      photos: ["hdg1", "hdg2"],
      category: "弘大美食"
    ),

    // 聖水洞美食
    Spot(
      imageName: "dalimak1",
      name: "Dalimak 小熊麵包",
      description: "Dalimak 小熊麵包是聖水洞人氣麵包店，主打造型可愛的手工烘焙麵包與甜點，口味豐富多樣，用料講究且不使用人工添加物。店鋪環境溫馨，常吸引甜點愛好者與年輕人前來品嘗。",
      openHours: "09:00-22:00",
      address: "서울 성동구 연무장길 38-2 1층",
      transport: "地鐵2號線 聖水站 4號出口",
      photos: ["dalimak1", "dalimak2"],
      category: "聖水洞美食"
    ),

    Spot(
      imageName: "kamjatang1",
      name: "祖傳三代馬鈴薯排骨湯",
      description: "祖傳三代馬鈴薯排骨湯位於聖水洞，主打用傳統方法燉煮的馬鈴薯排骨湯，湯頭濃郁且肉質軟嫩，份量充足。店鋪24小時營業，提供熱騰騰的家常料理，是當地人氣美食之一，適合隨時享用韓式排骨湯。",
      openHours: "24小時營業",
      address: "서울 성동구 연무장길 45",
      transport: "地鐵2號線 聖水站 4號出口",
      photos: ["kamjatang1", "kamjatang2"],
      category: "聖水洞美食"
    ),

    // 文創小物
    Spot(
      imageName: "madeby1",
      name: "made by 延南店",
      description: "made by 是弘大與延南洞著名的文具文創店，販售貼紙、明信片等，還提供 DIY 筆記本服務，是文具控必訪。",
      openHours: "12:00-22:00",
      address: "11, Yeonhui-ro, Mapo-gu, Seoul, 南韓",
      transport: "地鐵2號線 弘大入口站 3號出口",
      photos: ["madeby1", "madeby2", "madeby3"],
      category: "文創小物"
    ),
    Spot(
      imageName: "object1",
      name: "Object 弘大店",
      description: "宛如一座生活美學的靜謐角落，Object 是一間散發極簡美學的設計選物店，將日常物件化作藝術品呈現，店內以溫潤的木質調和清冷的水泥牆為基底，空間氛圍靜謐且純粹。",
      openHours: "12:00-20:00 (每週一公休) ",
      address: "326–2 Seogyo-dong, Mapo-gu, Seoul",
      transport: "地鐵2號線 弘大入口站 9號出口",
      photos: ["object1", "object2", "object3"],
      category: "文創小物"
    ),
    Spot(
      imageName: "butter1",
      name: "BUTTER shop 明洞店",
      description: "BUTTER SHOP 是一家韓國文創雜貨選物店，以「奶油家族」等可愛角色設計的商品為特色。店內販售的商品種類繁多，包括療癒小物、文具、居家用品（廚房、浴室）、旅行用品、聯名商品，甚至還有行李箱和玩具等。",
      openHours: "10:00-23:00",
      address: "55 Myeongdong-gil, Jung District, Seoul",
      transport: "地鐵4號線 明洞站 8號出口",
      photos: ["butter1", "butter2", "butter3"],
      category: "文創小物"
    ),

    // 韓流周邊
    Spot(
      imageName: "withmuu1",
      name: "WITHMUU 弘大店",
      description: "弘大 AK PLAZA 內的 K-POP 周邊店，販售專輯、應援品，還能 DIY 手機殼與拍貼，是粉絲天堂。",
      openHours: "週一至週五 11:00-22:00，週六至週日 10:30-22:00",
      address: "首爾特別市麻浦區楊花路188，AK PLAZA 弘大店 2F",
      transport: "地鐵2號線 弘大入口站 5號出口",
      photos: ["withmuu1", "withmuu2", "withmuu3"],
      category: "韓流周邊"
    ),
    Spot(
      imageName: "ktown4u1",
      name: "Ktown4U COEX",
      description: "位於江南 COEX 的大型 KPOP 周邊旗艦店，應援棒、限量商品與自拍機一應俱全，活動豐富。",
      openHours: "10:00-20:00",
      address: "首爾江南區永東大路513，COEX 2-4樓",
      transport: "地鐵2號線 三成站 5號出口",
      photos: ["ktown4u1", "ktown4u2", "ktown4u3"],
      category: "韓流周邊"
    ),

    // 遊樂園
    Spot(
      imageName: "lotte1",
      name: "樂天世界",
      description: "韓國人氣主題樂園，部分設施為室內，無懼天氣，常見於韓綜韓劇拍攝，是旅客必玩樂園。",
      openHours: "10:00-21:00",
      address: "240 Olympic-ro, Songpa District, Seoul, 南韓",
      transport: "地鐵2或8號線 蠶室站 4號出口",
      photos: ["lotte1", "lotte2", "lotte3"],
      category: "遊樂園"
    ),
    Spot(
      imageName: "coex1",
      name: "COEX 水族館",
      description: "首爾最大水族館，位於 Starfield Mall，設有 16 主題區與上萬隻海洋生物，還有餵食與美人魚秀。",
      openHours: "10:00-20:00",
      address: "199 Everland-ro, Pogok-eup, Cheoin-gu, Yongin-si, Gyeonggi-do, 南韓",
      transport: "地鐵9號線 奉恩寺站 7號出口",
      photos: ["coex1", "coex2"],
      category: "遊樂園"
    )
  ]

  var filtered: [Spot] {
    spots.filter { $0.category == category }
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
      .navigationTitle(category)
    }
  }
}


#Preview {
  SpotList(category: "弘大美食")
}


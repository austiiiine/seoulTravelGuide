import SwiftUI

struct ContentView: View {
    let regions = ["弘大美食", "明洞美食", "漢南洞美食", "東大門美食", "聖水洞美食", "江南美食"]
  let shopTypes = ["文創小物", "服裝配飾", "韓流周邊", "遊樂園", "美妝保養"]
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
        // 收藏
        Tab("已收藏", systemImage: "bookmark.fill") {

        }
      }

    }
}

#Preview {
    ContentView()
}

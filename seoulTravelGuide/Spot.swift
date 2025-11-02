import Foundation

struct Spot: Identifiable {
  let id = UUID()
  let imageName: String       // 封面圖
  let name: String            // 地點名稱
  let description: String     // 簡介
  let openHours: String       // 營業時間
  let address: String         // 地址
  let phone: String           // 電話
  let photos: [String]        // 相片
  let category: String          // 類別
}

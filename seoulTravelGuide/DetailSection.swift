import SwiftUI

struct DetailSection: View {
  let icon: String
  let title: String
  let content: String?

  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      // icon + title
      HStack(alignment: .center, spacing: 8) {
        Image(systemName: icon)
          .font(.title2)
          .foregroundColor(.accentColor)
        Text(title)
          .font(.title3)
          .bold()
          .frame(maxWidth: .infinity, alignment: .leading)
      }

      if (content != nil) {
        Text(content!)
          .font(.body)
          .frame(maxWidth: .infinity, alignment: .leading)
      }

    }


  }
}

#Preview(traits: .sizeThatFitsLayout) {
  DetailSection(icon: "clock", title: "營業時間", content: "11:30–22:20（15:30–16:30 為午後休息）")
}

import SwiftUI

struct CategoryRow: View {
  let category: String

  var body: some View {
    let rowW = UIScreen.main.bounds.width - 32
    let rowH = rowW * 2 / 5

    ZStack(alignment: .leading) {
      Image(category)
        .resizable()
        .scaledToFill()
        .frame(width: rowW, height: rowH)
        .clipped()
        .cornerRadius(24)

      LinearGradient(
        gradient: Gradient(stops: [
          .init(color: Color.black.opacity(0.5), location: 0),
          .init(color: Color.black.opacity(0.0), location: 0.4)
        ]),
        startPoint: .leading,
        endPoint: .trailing
      )
      .frame(width: rowW, height: rowH)
      .cornerRadius(24)

      Text(category)
        .font(.title2.bold())
        .foregroundColor(.white)
        .padding()
    }
    .frame(width: rowW, height: rowH)
  }
}

#Preview{
  CategoryRow(category: "弘大")
}


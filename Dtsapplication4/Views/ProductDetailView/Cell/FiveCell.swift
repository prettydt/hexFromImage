import SwiftUI

struct FiveCell: View {
    var body: some View {
        Text(StringConstants.kLbl6)
            .frame(width: getRelativeWidth(46.0), alignment: .center)
            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
            .fontWeight(.bold)
            .padding(.horizontal, getRelativeWidth(19.0))
            .padding(.vertical, getRelativeHeight(13.0))
            .foregroundColor(ColorConstants.Indigo900)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .overlay(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 24.0,
                                    bottomRight: 24.0)
                    .stroke(ColorConstants.Blue50,
                            lineWidth: 1))
            .background(ColorConstants.WhiteA700)
    }
}

/* struct FiveCell_Previews: PreviewProvider {

 static var previews: some View {
 			FiveCell()
 }
 } */

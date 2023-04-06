import SwiftUI

struct FeeditemCell: View {
    var body: some View {
        HStack {
            Image("img_productimage_109x109_1")
                .resizable()
                .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblNewProduct)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                Text(StringConstants.kMsgNikeAirZoomP2)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(41.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
                Text(StringConstants.kMsgJune320155)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
            }
            .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(88.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(12.0))
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .background(ColorConstants.WhiteA700)
        .hideNavigationBar()
    }
}

/* struct FeeditemCell_Previews: PreviewProvider {

 static var previews: some View {
 			FeeditemCell()
 }
 } */

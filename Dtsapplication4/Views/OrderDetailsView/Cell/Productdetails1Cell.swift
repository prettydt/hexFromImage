import SwiftUI

struct Productdetails1Cell: View {
    var body: some View {
        HStack {
            Spacer()
            Image("img_imageproduct_133x133")
                .resizable()
                .frame(width: getRelativeWidth(70.0), height: getRelativeWidth(72.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
            Spacer()
            VStack {
                HStack {
                    Text(StringConstants.kMsgNikeAirZoomP)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                    Image("img_loveicon")
                        .resizable()
                        .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.bottom, getRelativeHeight(10.0))
                        .padding(.leading, getRelativeWidth(20.0))
                    Image("img_trash_24x24")
                        .resizable()
                        .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.bottom, getRelativeHeight(10.0))
                        .padding(.leading, getRelativeWidth(8.0))
                }
                .frame(width: getRelativeWidth(225.0), height: getRelativeHeight(34.0),
                       alignment: .leading)
                HStack {
                    Text(StringConstants.kLbl29943)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.LightBlueA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                    Image("img_folder")
                        .resizable()
                        .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.leading, getRelativeWidth(67.0))
                    ZStack(alignment: .topTrailing) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners().fill(ColorConstants.Blue50))
                        Text(StringConstants.kLbl1)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Indigo90087)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(1.0), height: getRelativeHeight(18.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(20.14))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    Image("img_plus")
                        .resizable()
                        .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        .scaledToFit()
                }
                .frame(width: getRelativeWidth(225.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(17.0))
            }
            .frame(width: getRelativeWidth(225.0), height: getRelativeHeight(73.0),
                   alignment: .leading)
            Spacer()
        }
        .frame(width: getRelativeWidth(341.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .stroke(ColorConstants.Blue50,
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct Productdetails1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Productdetails1Cell()
 }
 } */

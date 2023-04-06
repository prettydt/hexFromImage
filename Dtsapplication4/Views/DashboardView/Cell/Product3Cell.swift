import SwiftUI

struct Product3Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_imageproduct_133x133")
                .resizable()
                .frame(width: getRelativeWidth(131.0), height: getRelativeWidth(133.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
            Text(StringConstants.kMsgNikeAirMax27)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.Indigo900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(34.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
            RatingBarView(selected: .constant(2), heightWeightImage: getRelativeWidth(12.0))
                .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(12.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(5.0))
            Text(StringConstants.kLbl29943)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.LightBlueA200)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(18.0))
            HStack {
                Text(StringConstants.kLbl53433)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                Text(StringConstants.kLbl24Off)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Pink300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(15.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(5.0))
        }
        .frame(width: getRelativeWidth(163.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .stroke(ColorConstants.Blue50,
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct Product3Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Product3Cell()
 }
 } */

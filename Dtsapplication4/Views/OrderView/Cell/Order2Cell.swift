import SwiftUI

struct Order2Cell: View {
    var body: some View {
        VStack {
            Text(StringConstants.kLblSdg1345kjd)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.Indigo900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            Text(StringConstants.kMsgOrderAtECom)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Indigo90087)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(195.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            Divider()
                .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(1.0),
                       alignment: .leading)
                .background(ColorConstants.Blue50)
                .padding(.top, getRelativeHeight(22.0))
            HStack {
                Text(StringConstants.kLblOrderStatus)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo90087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLblShipping)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(19.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(14.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Text(StringConstants.kLblItems)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo90087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kMsg1ItemsPurchas)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(19.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(9.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Text(StringConstants.kLblPrice)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo90087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(30.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLbl29943)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.LightBlueA200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(18.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(9.0))
            .padding(.horizontal, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(342.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .stroke(ColorConstants.Blue50,
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct Order2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Order2Cell()
 }
 } */

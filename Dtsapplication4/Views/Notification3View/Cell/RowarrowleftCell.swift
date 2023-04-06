import SwiftUI

struct RowarrowleftCell: View {
    var body: some View {
        HStack {
            Spacer()
            Image("img_arrowleft_24x24")
                .resizable()
                .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.vertical, getRelativeHeight(16.0))
                .padding(.leading, getRelativeWidth(16.0))
            Spacer()
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgTransactionNik)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(263.0), height: getRelativeHeight(19.0),
                           alignment: .leading)
                Text(StringConstants.kMsgCulpaCillumCo)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(63.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(11.0))
                Text(StringConstants.kMsgApril302014)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(118.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(16.0))
            .padding(.leading, getRelativeWidth(12.0))
            .padding(.trailing, getRelativeWidth(17.0))
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .background(ColorConstants.WhiteA700)
        .hideNavigationBar()
    }
}

/* struct RowarrowleftCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowarrowleftCell()
 }
 } */

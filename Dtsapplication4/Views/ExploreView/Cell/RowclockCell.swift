import SwiftUI

struct RowclockCell: View {
    var body: some View {
        HStack {
            VStack {
                Button(action: {}, label: {
                    Image("img_clock")
                })
                .frame(width: getRelativeWidth(68.0), height: getRelativeWidth(70.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                        bottomRight: 35.0)
                        .stroke(ColorConstants.Blue50,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                           bottomRight: 35.0)
                        .fill(ColorConstants.WhiteA700))
                Text(StringConstants.kLblDress)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(8.0))
            }
            .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(93.0),
                   alignment: .leading)
            .padding(.bottom, getRelativeHeight(14.0))
            .padding(.trailing, getRelativeWidth(10.0))
            VStack {
                Button(action: {}, label: {
                    Image("img_ticket_70x70")
                })
                .frame(width: getRelativeWidth(68.0), height: getRelativeWidth(70.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                        bottomRight: 35.0)
                        .stroke(ColorConstants.Blue50,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                           bottomRight: 35.0)
                        .fill(ColorConstants.WhiteA700))
                Text(StringConstants.kLblWomanTShirt)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(28.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(107.0),
                   alignment: .leading)
            .padding(.horizontal, getRelativeWidth(10.0))
            VStack {
                Button(action: {}, label: {
                    Image("img_womanpantsicon")
                })
                .frame(width: getRelativeWidth(68.0), height: getRelativeWidth(70.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                        bottomRight: 35.0)
                        .stroke(ColorConstants.Blue50,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                           bottomRight: 35.0)
                        .fill(ColorConstants.WhiteA700))
                Text(StringConstants.kLblWomanPants)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(28.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(107.0),
                   alignment: .leading)
            .padding(.horizontal, getRelativeWidth(10.0))
            VStack {
                Button(action: {}, label: {
                    Image("img_trash_1")
                })
                .frame(width: getRelativeWidth(68.0), height: getRelativeWidth(70.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                        bottomRight: 35.0)
                        .stroke(ColorConstants.Blue50,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                           bottomRight: 35.0)
                        .fill(ColorConstants.WhiteA700))
                Text(StringConstants.kLblSkirt)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(7.0))
            }
            .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(92.0),
                   alignment: .leading)
            .padding(.bottom, getRelativeHeight(14.0))
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: getRelativeWidth(341.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowclockCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowclockCell()
 }
 } */

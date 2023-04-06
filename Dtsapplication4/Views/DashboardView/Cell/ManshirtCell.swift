import SwiftUI

struct ManshirtCell: View {
    var body: some View {
        VStack {
            Button(action: {}, label: {
                Image("img_arrowleft_light_blue_a200_70x70")
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
            Text(StringConstants.kLblManShirt)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.BlueGray300)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
        }
        .frame(width: getRelativeWidth(68.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct ManshirtCell_Previews: PreviewProvider {

 static var previews: some View {
 			ManshirtCell()
 }
 } */

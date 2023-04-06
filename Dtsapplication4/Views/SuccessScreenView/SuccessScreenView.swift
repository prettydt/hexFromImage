import SwiftUI

struct SuccessScreenView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Button(action: {}, label: {
                    Image("img_checkmark")
                })
                .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                           bottomRight: 36.0)
                        .fill(ColorConstants.LightBlueA200))
                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                Text(StringConstants.kLblSuccess)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(36.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(15.0))
                Text(StringConstants.kMsgThankYouForS)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo90087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(231.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(11.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblBackToOrder)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(117.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(18.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.LightBlueA200))
                            .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                            .padding(.vertical, getRelativeHeight(16.0))
                    }
                })
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.LightBlueA200))
                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                .padding(.vertical, getRelativeHeight(16.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct SuccessScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessScreenView()
    }
}

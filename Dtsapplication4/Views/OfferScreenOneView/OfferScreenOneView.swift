import SwiftUI

struct OfferScreenOneView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text(StringConstants.kLblOffer)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                    Image("img_notification")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(13.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(30.0))
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgUseMegslCup)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(201.0), height: getRelativeHeight(45.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.LightBlueA200))
                    ZStack(alignment: .leading) {
                        Image("img_promotionimage_206x343")
                            .resizable()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(206.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgSuperFlashSal)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(209.0),
                                       height: getRelativeHeight(68.0), alignment: .topLeading)
                            HStack {
                                Text(StringConstants.kLbl08)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(9.0))
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(41.0), alignment: .center)
                                    .background(ColorConstants.WhiteA700)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(4.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                                Text(StringConstants.kLbl34)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(9.0))
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(41.0), alignment: .center)
                                    .background(ColorConstants.WhiteA700)
                                    .padding(.leading, getRelativeWidth(4.0))
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(4.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                                Text(StringConstants.kLbl52)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(41.0), alignment: .center)
                                    .background(ColorConstants.WhiteA700)
                                    .padding(.leading, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(150.0), height: getRelativeHeight(41.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(31.0))
                        }
                        .frame(width: getRelativeWidth(209.0), height: getRelativeHeight(140.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(110.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(206.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    ZStack(alignment: .topLeading) {
                        Image("img_recomendedproduct_206x343")
                            .resizable()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(206.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsg90OffSuperM)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(252.0),
                                       height: getRelativeHeight(69.0), alignment: .topLeading)
                            Text(StringConstants.kMsgSpecialBirthda)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(151.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(21.0))
                        }
                        .frame(width: getRelativeWidth(252.0), height: getRelativeHeight(108.0),
                               alignment: .topLeading)
                        .padding(.bottom, getRelativeHeight(66.02))
                        .padding(.trailing, getRelativeWidth(67.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(206.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(609.0),
                       alignment: .center)
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

struct OfferScreenOneView_Previews: PreviewProvider {
    static var previews: some View {
        OfferScreenOneView()
    }
}

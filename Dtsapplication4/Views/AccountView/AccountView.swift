import SwiftUI

struct AccountView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text(StringConstants.kLblAccount)
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
                    HStack {
                        Image("img_user_24x24")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblProfile)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(56.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    HStack {
                        Image("img_bagicon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblOrder)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(56.0),
                           alignment: .center)
                    .background(ColorConstants.Blue50)
                    HStack {
                        Image("img_location")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblAddress)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(56.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    HStack {
                        Image("img_mobile")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblPayment)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(56.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    .padding(.bottom, getRelativeHeight(5.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(608.0),
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

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

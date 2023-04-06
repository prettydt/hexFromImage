import SwiftUI

struct SortByView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("img_arrowleft")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(16.0))
                    Text(StringConstants.kLblSortBy)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(30.0))
                VStack {
                    Text(StringConstants.kLblBestMatch)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.LightBlueA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgTimeEndingSo)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.Blue50)
                    Text(StringConstants.kMsgTimeNewlyLis)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgPriceShippin)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgPriceShippin2)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgDistanceNeare)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.bottom, getRelativeHeight(5.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(700.0),
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

struct SortByView_Previews: PreviewProvider {
    static var previews: some View {
        SortByView()
    }
}

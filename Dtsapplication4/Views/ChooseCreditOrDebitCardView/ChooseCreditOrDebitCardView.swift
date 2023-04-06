import SwiftUI

struct ChooseCreditOrDebitCardView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var slidervolumeCurrentPage: Int = 0
    @State private var sliderData: [TutorialItem] = [
        TutorialItem(index: 0)
    ]
    struct TutorialItem: Identifiable {
        let id: UUID = .init()
        let index: Int
    }

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
                    Text(StringConstants.kLblChooseCard)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                    Image("img_plus_28x24")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    FSPagerViewSUI($slidervolumeCurrentPage, sliderData) { item in
                        VStack(alignment: .leading, spacing: 0) {
                            Image("img_volume")
                                .resizable()
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(7.0))
                            Text(StringConstants.kMsg63269124)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(301.0),
                                       height: getRelativeHeight(36.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(30.0))
                            HStack {
                                Text(StringConstants.kLblCardHolder)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.WhiteA70087)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(73.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Text(StringConstants.kLblCardSave)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.WhiteA70087)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(59.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(37.0))
                            }
                            .frame(width: getRelativeWidth(169.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(17.0))
                            HStack {
                                Text(StringConstants.kLblDominicOvo)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(71.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Text(StringConstants.kLbl0624)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(44.0))
                            }
                            .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(9.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(190.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(ColorConstants.LightBlueA200))
                    }
                    PageIndicator(numPages: sliderData.count, currentPage: $slidervolumeCurrentPage,
                                  selectedColor: ColorConstants.LightBlueA200,
                                  unSelectedColor: ColorConstants.Blue50,
                                  spacing: 8.0)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(594.0),
                       alignment: .center)
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblPay76686)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(125.0))
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
                            .padding(.bottom, getRelativeHeight(50.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                })
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.LightBlueA200))
                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                .padding(.bottom, getRelativeHeight(50.0))
                .padding(.horizontal, getRelativeWidth(16.0))
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

struct ChooseCreditOrDebitCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCreditOrDebitCardView()
    }
}

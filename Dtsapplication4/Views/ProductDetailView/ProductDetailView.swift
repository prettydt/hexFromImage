import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var sliderCurrentPage: Int = 0
    @State private var sliderData: [TutorialItem] = [
        TutorialItem(index: 0)
    ]

    @State private var ratingbarRating: Int = 0
    @State private var ratingbarOneRating: Int = 0
    @State private var ratingbarTwoRating: Int = 0 struct TutorialItem: Identifiable {
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
                    Text(StringConstants.kMsgNikeAirMax272)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                    HStack {
                        Image("img_search")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Image("img_overflowmenu")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(24.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            FSPagerViewSUI($sliderCurrentPage, sliderData) { item in
                                Image("img_productimage_1")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(238.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            PageIndicator(numPages: sliderData.count,
                                          currentPage: $sliderCurrentPage,
                                          selectedColor: ColorConstants.LightBlueA200,
                                          unSelectedColor: ColorConstants.Blue50,
                                          spacing: 8.0)
                            HStack {
                                Text(StringConstants.kMsgNikeAirZoomP)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(275.0),
                                           height: getRelativeHeight(58.0), alignment: .topLeading)
                                Spacer()
                                Image("img_download")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(2.0))
                                    .padding(.leading, getRelativeWidth(44.0))
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(58.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            RatingBarView(selected: $ratingbarRating,
                                          heightWeightImage: getRelativeWidth(16.0))
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeHeight(16.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            Text(StringConstants.kLbl29943)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.LightBlueA200)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(84.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            Text(StringConstants.kLblSelectSize)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(81.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 5, id: \.self) { index in
                                            FiveCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(368.0), alignment: .trailing)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            Text(StringConstants.kLblSelectColor)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(92.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.0))
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        Group {
                            Image("img_colors")
                                .resizable()
                                .frame(width: getRelativeWidth(359.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            Text(StringConstants.kLblSpecification)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(101.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            HStack {
                                Text(StringConstants.kLblShown)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(45.0))
                                Spacer()
                                Text(StringConstants.kMsgLaserBlueAnth)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: getRelativeWidth(169.0),
                                           height: getRelativeHeight(61.0), alignment: .topTrailing)
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(63.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            HStack {
                                Text(StringConstants.kLblStyle)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblCd0113400)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(19.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            Text(StringConstants.kMsgTheNikeAirMa)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(320.0),
                                       height: getRelativeHeight(85.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(38.0))
                            HStack {
                                Text(StringConstants.kLblReviewProduct)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(118.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblSeeMore)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.LightBlueA200)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(21.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            HStack {
                                RatingBarView(selected: $ratingbarOneRating,
                                              heightWeightImage: getRelativeWidth(16.0))
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeHeight(16.0), alignment: .center)
                                Text(StringConstants.kLbl45)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(17.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kLbl5Review)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(56.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(181.0), height: getRelativeHeight(16.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            HStack {
                                Image("img_profilepicture_48x48_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeWidth(48.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblJamesLawson)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(112.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    RatingBarView(selected: $ratingbarTwoRating,
                                                  heightWeightImage: getRelativeWidth(16.0))
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(16.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(112.0),
                                       height: getRelativeHeight(41.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        Group {
                            Text(StringConstants.kMsgAirMaxAreAlw)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(339.0),
                                       height: getRelativeHeight(107.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(19.0))
                            HStack {
                                Image("img_productpicture02_72x72")
                                    .resizable()
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeWidth(72.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0))
                                Image("img_productpicture03_72x72")
                                    .resizable()
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeWidth(72.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                                Image("img_productpicture01_72x72")
                                    .resizable()
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeWidth(72.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(240.0), height: getRelativeHeight(72.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            Text(StringConstants.kMsgDecember1020)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            Text(StringConstants.kMsgYouMightAlso)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(139.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            Product7Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(11.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblAddToCart)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(126.0))
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
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                })
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.LightBlueA200))
                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
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

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}

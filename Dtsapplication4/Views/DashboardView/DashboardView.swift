import SwiftUI

struct DashboardView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var sliderofferbannertitlCurrentPage: Int = 0
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
                    Image("img_search_light_blue_a200")
                        .resizable()
                        .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(16.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(32.0))
                    Text(StringConstants.kLblSearchProduct)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(8.0))
                    HStack {
                        Image("img_download")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        ZStack(alignment: .topTrailing) {
                            Image("img_notification")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Image("img_close_8x8")
                                .resizable()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(8.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(14.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0))
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
                            FSPagerViewSUI($sliderofferbannertitlCurrentPage, sliderData) { item in
                                ZStack(alignment: .leading) {
                                    Image("img_promotionimage_206x343")
                                        .resizable()
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(206.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                   bottomLeft: 5.0,
                                                                   bottomRight: 5.0))
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kMsgSuperFlashSal)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(24.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(209.0),
                                                   height: getRelativeHeight(68.0),
                                                   alignment: .topLeading)
                                        HStack {
                                            Text(StringConstants.kLbl08)
                                                .font(FontScheme
                                                    .kPoppinsBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.bold)
                                                .padding(.horizontal, getRelativeWidth(9.0))
                                                .padding(.vertical, getRelativeHeight(8.0))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(42.0),
                                                       height: getRelativeHeight(41.0),
                                                       alignment: .center)
                                                .background(ColorConstants.WhiteA700)
                                            Text(StringConstants.kLbl)
                                                .font(FontScheme
                                                    .kPoppinsBold(size: getRelativeHeight(14.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(4.0),
                                                       height: getRelativeHeight(21.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(4.0))
                                            Text(StringConstants.kLbl34)
                                                .font(FontScheme
                                                    .kPoppinsBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.bold)
                                                .padding(.horizontal, getRelativeWidth(9.0))
                                                .padding(.vertical, getRelativeHeight(8.0))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(42.0),
                                                       height: getRelativeHeight(41.0),
                                                       alignment: .center)
                                                .background(ColorConstants.WhiteA700)
                                                .padding(.leading, getRelativeWidth(4.0))
                                            Text(StringConstants.kLbl)
                                                .font(FontScheme
                                                    .kPoppinsBold(size: getRelativeHeight(14.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(4.0),
                                                       height: getRelativeHeight(21.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(4.0))
                                            Text(StringConstants.kLbl52)
                                                .font(FontScheme
                                                    .kPoppinsBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.bold)
                                                .padding(.horizontal, getRelativeWidth(10.0))
                                                .padding(.vertical, getRelativeHeight(8.0))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(42.0),
                                                       height: getRelativeHeight(41.0),
                                                       alignment: .center)
                                                .background(ColorConstants.WhiteA700)
                                                .padding(.leading, getRelativeWidth(4.0))
                                        }
                                        .frame(width: getRelativeWidth(150.0),
                                               height: getRelativeHeight(41.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(31.0))
                                    }
                                    .frame(width: getRelativeWidth(209.0),
                                           height: getRelativeHeight(140.0), alignment: .leading)
                                    .padding(.leading, getRelativeWidth(24.0))
                                    .padding(.trailing, getRelativeWidth(110.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(206.0), alignment: .center)
                            }
                            PageIndicator(numPages: sliderData.count,
                                          currentPage: $sliderofferbannertitlCurrentPage,
                                          selectedColor: ColorConstants.LightBlueA200,
                                          unSelectedColor: ColorConstants.Blue50,
                                          spacing: 8.0)
                            HStack {
                                Text(StringConstants.kLblCategory)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblMoreCategory)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.LightBlueA200)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(114.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(21.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 5, id: \.self) { index in
                                            ManshirtCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(10.0))
                            HStack {
                                Text(StringConstants.kLblFlashSale)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(77.0),
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
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            Product1Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(12.0))
                            HStack {
                                Text(StringConstants.kLblMegaSale)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(79.0),
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
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            Product2Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(10.0))
                        }
                        Group {
                            Image("img_recomendedproduct_206x343")
                                .resizable()
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(206.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0))
                                .padding(.top, getRelativeHeight(29.0))
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack {
                                    LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                              spacing: 13.0) {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            Product3Cell()
                                        }
                                    }
                                }
                            }
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                            .fixedSize(horizontal: false, vertical: false)
                        }
                    }
                    .frame(width: getRelativeWidth(359.0), alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(16.0))
                }
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

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

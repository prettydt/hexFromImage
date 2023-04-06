import SwiftUI

struct ReviewProductView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var ratingbarRating: Int = 0
    @State private var ratingbarOneRating: Int = 0
    @State private var ratingbarTwoRating: Int = 0
    @State private var ratingbarThreeRating: Int = 0
    @State private var ratingbarFourRating: Int = 0
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
                        .padding(.leading, getRelativeWidth(19.0))
                    Text(StringConstants.kLbl5Review2)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(24.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
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
                                    RatingBarView(selected: $ratingbarRating,
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
                            Text(StringConstants.kMsgAirMaxAreAlw)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(333.0),
                                       height: getRelativeHeight(107.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                            Text(StringConstants.kMsgDecember1020)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                            HStack {
                                Image("img_profilepicture_48x48_2")
                                    .resizable()
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeWidth(48.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblLauraOctavian)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(118.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    RatingBarView(selected: $ratingbarOneRating,
                                                  heightWeightImage: getRelativeWidth(16.0))
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(16.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(118.0),
                                       height: getRelativeHeight(42.0), alignment: .top)
                                .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(32.0))
                            Text(StringConstants.kMsgThisIsReally)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(317.0),
                                       height: getRelativeHeight(41.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.trailing, getRelativeWidth(15.0))
                            Text(StringConstants.kMsgDecember1020)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                            HStack {
                                Image("img_profilepicture_48x48_3")
                                    .resizable()
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeWidth(48.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblJhonsonBridge)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(119.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    RatingBarView(selected: $ratingbarTwoRating,
                                                  heightWeightImage: getRelativeWidth(16.0))
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(16.0), alignment: .leading)
                                }
                                .frame(width: getRelativeWidth(119.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(183.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(34.0))
                            Text(StringConstants.kMsgAirMaxAreAlw2)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(331.0),
                                       height: getRelativeHeight(63.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                        }
                        Group {
                            Text(StringConstants.kMsgDecember1020)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                            HStack {
                                Image("img_profilepicture_48x48_2")
                                    .resizable()
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeWidth(48.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblLauraOctavian)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(118.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    RatingBarView(selected: $ratingbarThreeRating,
                                                  heightWeightImage: getRelativeWidth(16.0))
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(16.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(118.0),
                                       height: getRelativeHeight(42.0), alignment: .top)
                                .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(26.0))
                            Text(StringConstants.kMsgThisIsReally)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(317.0),
                                       height: getRelativeHeight(41.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.trailing, getRelativeWidth(15.0))
                            Text(StringConstants.kMsgDecember1020)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                            HStack {
                                Image("img_profilepicture_48x48_3")
                                    .resizable()
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeWidth(48.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblJhonsonBridge)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(119.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    RatingBarView(selected: $ratingbarFourRating,
                                                  heightWeightImage: getRelativeWidth(16.0))
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(16.0), alignment: .leading)
                                }
                                .frame(width: getRelativeWidth(119.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(183.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(34.0))
                            Text(StringConstants.kMsgAirMaxAreAlw2)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(331.0),
                                       height: getRelativeHeight(63.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                            Text(StringConstants.kMsgDecember1020)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                        }
                    }
                    .frame(width: getRelativeWidth(333.0), alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(19.0))
                    .padding(.trailing, getRelativeWidth(23.0))
                }
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblWriteReview)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(121.0))
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
                            .padding(.leading, getRelativeWidth(19.0))
                            .padding(.trailing, getRelativeWidth(13.0))
                    }
                })
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.LightBlueA200))
                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                .padding(.leading, getRelativeWidth(19.0))
                .padding(.trailing, getRelativeWidth(13.0))
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

struct ReviewProductView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewProductView()
    }
}

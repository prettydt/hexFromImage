import SwiftUI

struct FilterView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var priceText: String = ""
    @State private var priceoneText: String = ""
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("img_close_23x24")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(23.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(18.0))
                    Text(StringConstants.kLblFilterSearch)
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
                            Text(StringConstants.kLblPriceRange)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(91.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            HStack {
                                HStack {
                                    TextField(StringConstants.kLbl1245, text: $priceText)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.BlueGray300)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(165.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Blue50,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.trailing, getRelativeWidth(6.0))
                                Spacer()
                                HStack {
                                    TextField(StringConstants.kLbl9344, text: $priceoneText)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.BlueGray300)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(165.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Blue50,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.leading, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(11.0))
                            Text(StringConstants.kLblCondition)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(75.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(34.0))
                            HStack {
                                Text(StringConstants.kLblNew)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                    .padding(.vertical, getRelativeHeight(15.0))
                                    .foregroundColor(ColorConstants.BlueGray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(59.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                            bottomLeft: 5.0, bottomRight: 5.0)
                                            .stroke(ColorConstants.Blue50,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0)
                                            .fill(Color.clear.opacity(0.7)))
                                Text(StringConstants.kLblUsed)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                    .padding(.vertical, getRelativeHeight(15.0))
                                    .foregroundColor(ColorConstants.LightBlueA200)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(65.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .background(ColorConstants.LightBlueA20019)
                                    .padding(.leading, getRelativeWidth(9.0))
                                Text(StringConstants.kLblNotSpecified)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                    .padding(.vertical, getRelativeHeight(15.0))
                                    .foregroundColor(ColorConstants.LightBlueA200)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(120.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .background(ColorConstants.LightBlueA20019)
                                    .padding(.leading, getRelativeWidth(8.0))
                            }
                            .frame(width: getRelativeWidth(261.0), height: getRelativeHeight(50.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.trailing, getRelativeWidth(82.0))
                            Text(StringConstants.kLblBuyingFormat)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(24.0))
                            Text("buyingformate")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(108.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(11.0))
                            Text(StringConstants.kLblItemLocation)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(104.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                            Text("itemlocation")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(303.0),
                                       height: getRelativeHeight(108.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        Group {
                            Text(StringConstants.kLblShowOnly)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(25.0))
                            Text("showonly")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(314.0),
                                       height: getRelativeHeight(340.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(10.0))
                        }
                    }
                    .frame(width: getRelativeWidth(343.0), alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblApply)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(148.0))
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

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}

import SwiftUI

struct SearchView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var search1: String = ""
    var body: some View {
        VStack {
            VStack {
                HStack {
                    HStack {
                        Spacer()
                        Image("img_search_light_blue_a200")
                            .resizable()
                            .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(16.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(8.0))
                        TextField(StringConstants.kLblNikeAirMax, text: $search1)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.Indigo90087)
                            .padding()
                        Image("img_close_20x20")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                        Spacer()
                    }
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.LightBlueA200,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.leading, getRelativeWidth(16.0))
                    Image("img_upload_24x24")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(30.0))
                VStack {
                    Divider()
                        .frame(width: getRelativeWidth(369.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Blue50)
                        .padding(.leading, getRelativeWidth(6.0))
                    Text(StringConstants.kMsgNikeAirMax273)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.top, getRelativeHeight(9.0))
                    Text(StringConstants.kMsgNikeAirVaporm)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgNikeAirMax273)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgNikeAirMax274)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgNikeAirVaporm2)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgNikeAirMax97)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.bottom, getRelativeHeight(5.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(701.0),
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

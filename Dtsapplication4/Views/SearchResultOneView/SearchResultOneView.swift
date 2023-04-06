import SwiftUI

struct SearchResultOneView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var searchform: String = ""
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
                            .padding(.vertical, getRelativeHeight(15.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(8.0))
                        TextField(StringConstants.kLblSearchProduct, text: $searchform)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray300)
                            .padding()
                    }
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.leading, getRelativeWidth(16.0))
                    HStack {
                        Image("img_sort")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Image("img_filter")
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
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(30.0))
                VStack {
                    Divider()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Blue50)
                    HStack {
                        Text(StringConstants.kLbl0Result)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo90087)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(4.0))
                        Text("group7804")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(187.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kLblManShoes)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_arrowdown")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    Text("group7803")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(131.0))
                    Button(action: {}, label: {
                        Image("img_close_72x72")
                    })
                    .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                               bottomRight: 36.0)
                            .fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    Text(StringConstants.kMsgProductNotFou)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(236.0), height: getRelativeHeight(36.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(15.0))
                    Text(StringConstants.kMsgThankYouForS)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(231.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(11.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblBackToHome)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(118.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(57.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.LightBlueA200))
                                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0,
                                        y: 10)
                                .padding(.vertical, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                        }
                    })
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.vertical, getRelativeHeight(16.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
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

struct SearchResultOneView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultOneView()
    }
}

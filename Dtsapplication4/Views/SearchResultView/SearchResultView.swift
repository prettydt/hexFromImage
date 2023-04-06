import SwiftUI

struct SearchResultView: View {
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
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.bottom, getRelativeHeight(14.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(8.0))
                        TextField(StringConstants.kLblNikeAirMax, text: $search1)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.Indigo90087)
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
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(42.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .center)
                            .background(ColorConstants.Blue50)
                        HStack {
                            Text(StringConstants.kLbl145Result)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo90087)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(4.0))
                            Text("group7787")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(174.0),
                                       height: getRelativeHeight(18.0))
                            Text(StringConstants.kLblManShoes)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(71.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Image("img_arrowdown")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                          spacing: 13.0) {
                                    ForEach(0 ... 5, id: \.self) { index in
                                        Product8Cell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
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

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView()
    }
}

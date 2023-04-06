import SwiftUI

struct AddCardView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var entercardnumberoneText: String = ""
    @State private var expirationdateoneText: String = ""
    @State private var securitycodeoneText: String = ""
    @State private var entercardnumberthreeText: String = ""
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
                    Text(StringConstants.kLblAddCard)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblCardNumber)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                    HStack {
                        TextField(StringConstants.kMsgEnterCardNumb, text: $entercardnumberoneText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(12.0))
                    Text(StringConstants.kLblExpirationDate)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(24.0))
                    HStack {
                        TextField(StringConstants.kLblExpirationDate, text: $expirationdateoneText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(48.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(11.0))
                    Text(StringConstants.kLblSecurityCode)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(29.0))
                    HStack {
                        TextField(StringConstants.kLblSecurityCode, text: $securitycodeoneText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(48.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(11.0))
                    Text(StringConstants.kLblCardHolder2)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(23.0))
                    HStack {
                        TextField(StringConstants.kMsgEnterCardNumb,
                                  text: $entercardnumberthreeText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.vertical, getRelativeHeight(12.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(594.0),
                       alignment: .center)
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblAddCard)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(135.0))
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

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardView()
    }
}

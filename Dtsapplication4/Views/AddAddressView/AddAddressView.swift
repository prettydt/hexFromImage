import SwiftUI

struct AddAddressView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var oldpasswordText: String = ""
    @State private var oldpasswordoneText: String = ""
    @State private var oldpasswordtwoText: String = ""
    @State private var oldpasswordthreeText: String = ""
    @State private var oldpasswordfourText: String = ""
    @State private var oldpasswordfiveText: String = ""
    @State private var oldpasswordsixText: String = ""
    @State private var oldpasswordsevenText: String = ""
    @State private var oldpasswordeightText: String = ""
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
                    Text(StringConstants.kLblAddAddress)
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
                            Text(StringConstants.kMsgCountryOrRegi)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(135.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kMsgEnterTheCount, text: $oldpasswordText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(11.0))
                            Text(StringConstants.kLblFirstName)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(83.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheFirst,
                                          text: $oldpasswordoneText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(13.0))
                            Text(StringConstants.kLblLastName)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(81.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheLast,
                                          text: $oldpasswordtwoText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(12.0))
                            Text(StringConstants.kLblStreetAddress)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheStree,
                                          text: $oldpasswordthreeText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(12.0))
                        }
                        Group {
                            Text(StringConstants.kMsgStreetAddress)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(208.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(21.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheStree2,
                                          text: $oldpasswordfourText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(16.0))
                            Text(StringConstants.kLblCity)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(31.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                            HStack {
                                TextField(StringConstants.kLblEnterTheCity,
                                          text: $oldpasswordfiveText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(11.0))
                            Text(StringConstants.kMsgStateProvince)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(174.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheState,
                                          text: $oldpasswordsixText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(12.0))
                            Text(StringConstants.kLblZipCode)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(67.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(24.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheZipC,
                                          text: $oldpasswordsevenText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(11.0))
                        }
                        Group {
                            Text(StringConstants.kLblPhoneNumber)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterThePhone,
                                          text: $oldpasswordeightText)
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
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(12.0))
                        }
                    }
                    .frame(width: getRelativeWidth(343.0), alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblAddAddress)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(122.0))
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

struct AddAddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddAddressView()
    }
}

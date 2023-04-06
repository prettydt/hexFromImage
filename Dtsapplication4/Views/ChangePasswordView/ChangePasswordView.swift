import SwiftUI

struct ChangePasswordView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var oldpasswordoneText: String = ""
    @State private var newpasswordoneText: String = ""
    @State private var newpasswordagaitwoText: String = ""
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
                    Text(StringConstants.kLblChangePassword)
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
                    Text(StringConstants.kLblOldPassword)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                    HStack {
                        Spacer()
                        Image("img_lock")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        TextField(StringConstants.kMsg, text: $oldpasswordoneText)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
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
                    Text(StringConstants.kLblNewPassword)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(23.0))
                    HStack {
                        Spacer()
                        Image("img_lock")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        TextField(StringConstants.kMsg, text: $newpasswordoneText)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
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
                    Text(StringConstants.kMsgNewPasswordAg)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(159.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(24.0))
                    HStack {
                        Spacer()
                        Image("img_lock")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        TextField(StringConstants.kMsg, text: $newpasswordagaitwoText)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
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
                    .padding(.vertical, getRelativeHeight(11.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(593.0),
                       alignment: .center)
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblSave)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(152.0))
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

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}

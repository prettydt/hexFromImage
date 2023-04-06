import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    var body: some View {
        VStack {
            VStack {
                Group {
                    Button(action: {}, label: {
                        Image("img_close_white_a700")
                    })
                    .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.LightBlueA200))
                    Text(StringConstants.kMsgWelcomeToECo)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(16.0))
                    Text(StringConstants.kMsgSignInToCont)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(10.0))
                    HStack {
                        Spacer()
                        Image("img_mail")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        TextField(StringConstants.kLblYourEmail, text: $emailText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(28.0))
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
                        SecureField(StringConstants.kLblPassword, text: $passwordText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(10.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSignIn)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(145.0))
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
                                .padding(.top, getRelativeHeight(16.0))
                        }
                    })
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(16.0))
                    HStack {
                        Divider()
                            .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Blue50)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                        Spacer()
                        Text(StringConstants.kLblOr)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(21.0), height: getRelativeWidth(21.0),
                                   alignment: .topLeading)
                        Spacer()
                        Divider()
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Blue50)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(21.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    HStack {
                        Image("img_google")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kMsgLoginWithGoog)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(72.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(16.0))
                }
                Group {
                    HStack {
                        Image("img_facebook")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kMsgLoginWithFace)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(64.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(8.0))
                    Text(StringConstants.kMsgForgotPassword)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.LightBlueA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(17.0))
                    Text(StringConstants.kMsgDonTHaveAnA)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.IndigoA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(212.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(5.0))
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

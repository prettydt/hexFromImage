import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                    Text(StringConstants.kLblProfile)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(30.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Image("img_profilepicture_72x72")
                            .resizable()
                            .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                        VStack {
                            Text(StringConstants.kLblDominicOvo)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(97.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Text(StringConstants.kLblDominicOvo2)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                        }
                        .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(47.0),
                               alignment: .top)
                        .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(186.0), height: getRelativeHeight(72.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(16.0))
                    HStack {
                        Image("img_lightbulb")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblGender)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("group7630")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kLblMale)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(30.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(32.0))
                    HStack {
                        Image("img_calendar")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblBirthday)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("group7631")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kLbl12122000)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    HStack {
                        Image("img_mail_24x24")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblEmail)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(37.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("group7632")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kMsgRex4domGmailC)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    HStack {
                        Image("img_mobile")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblPhoneNumber)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("group7633")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kLbl3075550133)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    HStack {
                        Image("img_lock_24x24")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblChangePassword)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("group7634")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kMsg)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.bottom, getRelativeHeight(5.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(702.0),
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

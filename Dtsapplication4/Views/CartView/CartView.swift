import SwiftUI

struct CartView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var coponcodefieldText: String = ""
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text(StringConstants.kLblYourCart)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                    Image("img_notification")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(13.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(30.0))
                VStack {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    ProductdetailsCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(343.0), alignment: .center)
                    .padding(.horizontal, getRelativeWidth(1.0))
                    HStack {
                        HStack {
                            TextField(StringConstants.kMsgEnterCuponCod, text: $coponcodefieldText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.BlueGray300)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(256.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(ColorConstants.Blue50,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(ColorConstants.WhiteA700))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblApply)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    .padding(.vertical, getRelativeHeight(19.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(87.0),
                                           height: getRelativeHeight(56.0), alignment: .center)
                                    .background(RoundedCorners(topRight: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.LightBlueA200))
                            }
                        })
                        .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topRight: 5.0, bottomRight: 5.0)
                            .fill(ColorConstants.LightBlueA200))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(52.0))
                    VStack {
                        HStack {
                            Text(StringConstants.kLblItems3)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(58.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl59886)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(51.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        HStack {
                            Text(StringConstants.kLblShipping)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(55.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl4000)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(43.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(19.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                        HStack {
                            Text(StringConstants.kLblImportCharges)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl12800)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(47.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(19.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(14.0))
                        Divider()
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Blue50)
                            .padding(.top, getRelativeHeight(12.0))
                        HStack {
                            Text(StringConstants.kLblTotalPrice)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(70.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl76686)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.LightBlueA200)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(52.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(164.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Blue50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(16.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblCheckOut)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(131.0))
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
                        }
                    })
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.vertical, getRelativeHeight(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(608.0),
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

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

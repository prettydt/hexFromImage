import SwiftUI

struct Notification3View: View {
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
                    Text(StringConstants.kLblActivity)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 2, id: \.self) { index in
                                RowarrowleftCell()
                            }
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .center)
                .padding(.top, getRelativeHeight(11.0))
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

struct Notification3View_Previews: PreviewProvider {
    static var previews: some View {
        Notification3View()
    }
}

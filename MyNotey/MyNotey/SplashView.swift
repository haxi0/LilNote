
import SwiftUI

struct SplashView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {

            if self.isActive {

                ContentView()
                
            } else {
                Text("Welcome!")
                    .font(Font.largeTitle)
                    .bold()
            }
        }

        .onAppear {

            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {

                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}

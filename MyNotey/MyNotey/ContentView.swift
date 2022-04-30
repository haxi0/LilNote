
import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @AppStorage("notes") private var notes = ""
    var body: some View {
        NavigationView {
                    TextEditor(text: $notes)
                        .navigationTitle("Your LilNote")
                        .padding()
            }
        
        Button("Copy")
        {
            UIPasteboard.general.string = notes
            showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Copied to clipboard!"), message: Text("You may press OK"), dismissButton: .default(Text("OK")))
        }
        Spacer()
    }
}

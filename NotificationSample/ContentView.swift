//
//  ContentView.swift
//  NotificationSample
//
//  Created by Yusuke Hasegawa on 2021/07/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Provisional Authorization")
                .padding()
            Button.init("Schedule Notification") {
                NotificationManager.shared.scheduleNotification()
            }

        }.onAppear {
            NotificationManager.shared.requestAuthorization()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

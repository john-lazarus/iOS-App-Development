//
//  HealthyChild.swift
//  Indian Vaccination Schedules
//
//  Created by John Lazarus on 02/05/23.
//

import SwiftUI

struct HealthyChild: View {
    var body: some View {
        Image("boy-vacci")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

struct HealthyChild_Previews: PreviewProvider {
    static var previews: some View {
        HealthyChild()
    }
}

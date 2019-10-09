//
//  CircleImage.swift
//  Landmarks
//
//  Created by Abdullah Khan on 2019-10-08.
//  Copyright © 2019 Abdullah Khan. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}

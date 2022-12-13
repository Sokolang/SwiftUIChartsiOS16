//
//  RectangleMarkExample.swift
//  SwiftUIChartsiOS16
//
//  Created by Anzhelika Sokolova on 13.12.2022.
//

import SwiftUI
import Charts

struct RectangleMarkExample: View {
    var body: some View {
        List {
            Chart {
                RectangleMark(
                    x: .value("Mount", "jan/22"),
                    y: .value("Value", 5)
                )
                RectangleMark(
                    x: .value("Mount", "fev/22"),
                    y: .value("Value", 4)
                )
                RectangleMark(
                    x: .value("Mount", "mar/22"),
                    y: .value("Value", 7)
                )
            }
            .frame(height: 250)
        }
    }
}

struct RectangleMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        RectangleMarkExample()
    }
}

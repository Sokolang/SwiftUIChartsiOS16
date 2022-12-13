//
//  PointMarkExample.swift
//  SwiftUIChartsiOS16
//
//  Created by Anzhelika Sokolova on 13.12.2022.
//

import SwiftUI
import Charts

struct PointMarkExample: View {
    var body: some View {
        List {
            Chart {
                PointMark(
                    x: .value("Mount", "jan/22"),
                    y: .value("Value", 5)
                )
                PointMark(
                    x: .value("Mount", "fev/22"),
                    y: .value("Value", 4)
                )
                PointMark(
                    x: .value("Mount", "mar/22"),
                    y: .value("Value", 7)
                )
            }
            .frame(height: 250)
        }
    }
}
struct PointMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        PointMarkExample()
    }
}

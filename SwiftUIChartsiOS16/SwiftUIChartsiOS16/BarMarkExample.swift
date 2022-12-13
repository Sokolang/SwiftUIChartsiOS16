//
//  ChartsExample.swift
//  SwiftUIChartsiOS16
//
//  Created by Anzhelika Sokolova on 13.12.2022.
//

import SwiftUI


import SwiftUI
import Charts

struct ChartsExample: View {
    var body: some View {
        List {
            Chart {
                BarMark(
                    x: .value("Mount", "jan/22"),
                    y: .value("Value", 5)
                )
                BarMark(
                    x: .value("Mount", "fev/22"),
                    y: .value("Value", 4)
                )
                BarMark(
                    x: .value("Mount", "mar/22"),
                    y: .value("Value", 7)
                )
            }
            .frame(height: 250)
        }
    }
}

struct ChartsExample_Previews: PreviewProvider {
    static var previews: some View {
        ChartsExample()
    }
}

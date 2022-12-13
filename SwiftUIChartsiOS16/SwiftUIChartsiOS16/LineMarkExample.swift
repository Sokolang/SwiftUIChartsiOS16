//
//  LineMark.swift
//  SwiftUIChartsiOS16
//
//  Created by Anzhelika Sokolova on 13.12.2022.
//


import SwiftUI
import Charts

struct LineMarkExample: View {
    var body: some View {
        List {
            Chart {
                LineMark(
                    x: .value("Mount", "jan/22"),
                    y: .value("Value", 5)
                )
                LineMark(
                    x: .value("Mount", "fev/22"),
                    y: .value("Value", 4)
                )
                LineMark(
                    x: .value("Mount", "mar/22"),
                    y: .value("Value", 7)
                )
            }
            .frame(height: 250)
        }
    }
}

struct LineMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        LineMarkExample()
    }
}

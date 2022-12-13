//
//  AreaMarkExample.swift
//  SwiftUIChartsiOS16
//
//  Created by Anzhelika Sokolova on 13.12.2022.
//

import SwiftUI
import Charts

struct AreaMarkExample: View {
    var body: some View {
        List {
            Chart {
                AreaMark(
                    x: .value("Mount", "jan/22"),
                    y: .value("Value", 5)
                )
                AreaMark(
                    x: .value("Mount", "fev/22"),
                    y: .value("Value", 4)
                )
                AreaMark(
                    x: .value("Mount", "mar/22"),
                    y: .value("Value", 7)
                )
            }
            .frame(height: 250)
        }
    }
}

struct AreaMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        AreaMarkExample()
    }
}

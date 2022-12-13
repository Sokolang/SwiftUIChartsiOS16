//
//  CustomChart.swift
//  SwiftUIChartsiOS16
//
//  Created by Anzhelika Sokolova on 13.12.2022.
//

import SwiftUI
import Charts

struct MountPriceCustom: Identifiable {
    var id = UUID()
    var mount: String
    var value: Double
}

struct CustomChart: View {
    let data: [MountPriceCustom] = [
        MountPriceCustom(mount: "jan/22", value: 5),
        MountPriceCustom(mount: "feb/22", value: 4),
        MountPriceCustom(mount: "mar/22", value: 7),
        MountPriceCustom(mount: "apr/22", value: 15),
        MountPriceCustom(mount: "may/22", value: 14),
        MountPriceCustom(mount: "jun/22", value: 27),
        MountPriceCustom(mount: "jul/22", value: 27)
    ]
        
    var body: some View {
        List {
            Chart(data) {
                LineMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
                PointMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
            }
            .frame(height: 250)
        }
    }
}

struct CustomChart_Previews: PreviewProvider {
    static var previews: some View {
        CustomChart()
    }
}

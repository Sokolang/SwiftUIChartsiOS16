//
//  DataListIntoChart.swift
//  SwiftUIChartsiOS16
//
//  Created by Anzhelika Sokolova on 13.12.2022.
//
import SwiftUI
import Charts

struct MountPrice: Identifiable {
    var id = UUID()
    var mount: String
    var value: Double
}

struct DataListIntoChart: View {
    let data: [MountPrice] = [
        MountPrice(mount: "jan/22", value: 5),
        MountPrice(mount: "feb/22", value: 4),
        MountPrice(mount: "mar/22", value: 7)
    ]
        
    var body: some View {
        List {
            Chart(data) {
                BarMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
            }
            .frame(height: 250)
        }
    }
}

struct DataListIntoChart_Previews: PreviewProvider {
    static var previews: some View {
        DataListIntoChart()
    }
}

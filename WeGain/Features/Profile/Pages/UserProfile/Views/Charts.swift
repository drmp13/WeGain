//
//  SwiftUIView.swift
//  WeGain
//
//  Created by Devin Winardi on 09/06/21.
//

import SwiftUI
import SwiftUICharts

struct Charts: View {
    let data : LineChartData = weekOfData()
    
    var body: some View {
        VStack {
            LineChart(chartData: data)
                .pointMarkers(chartData: data)
                .touchOverlay(chartData: data, specifier: "%.0f")
                .xAxisGrid(chartData: data)
                .yAxisGrid(chartData: data)
                .xAxisLabels(chartData: data)
                .yAxisLabels(chartData: data)
                //.infoBox(chartData: data)
                //.headerBox(chartData: data)
                .legends(chartData: data, columns: [GridItem(.flexible()), GridItem(.flexible())])
                .id(data.id)
                .frame(minWidth: 360, maxWidth: 360, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .center)
        }
        .navigationTitle("Week of Data")
    }
    
    static func weekOfData() -> LineChartData {
        let data = LineDataSet(dataPoints: [
            LineChartDataPoint(value: 50, xAxisLabel: "May"),
            LineChartDataPoint(value: 52, xAxisLabel: "Jun"),
            LineChartDataPoint(value: 50, xAxisLabel: "Jul"),
            LineChartDataPoint(value: 53, xAxisLabel: "Aug"),
            LineChartDataPoint(value: 57, xAxisLabel: "Sep"),
            LineChartDataPoint(value: 60, xAxisLabel: "Oct")
        ],
        legendTitle: "Weight Progress",
        pointStyle: PointStyle(),
        style: LineStyle(lineColour: ColourStyle(colour: .red), lineType: .curvedLine))
        
        let metadata   = ChartMetadata(title: "", subtitle: "")
        
        let gridStyle  = GridStyle(numberOfLines: 5,
                                   lineColour   : Color(.lightGray).opacity(0.5),
                                   lineWidth    : 1,
                                   dash         : [8],
                                   dashPhase    : 0)
        
        let chartStyle = LineChartStyle(//infoBoxPlacement    : .infoBox(isStatic: false),
                                        //infoBoxBorderColour : Color.primary,
                                        //infoBoxBorderStyle  : StrokeStyle(lineWidth: 1),
                                        
                                        markerType          : .vertical(attachment: .line(dot: .style(DotStyle()))),
                                        
                                        xAxisGridStyle      : gridStyle,
                                        xAxisLabelPosition  : .bottom,
                                        xAxisLabelColour    : Color.primary,
                                        xAxisLabelsFrom     : .dataPoint(rotation: .degrees(0)),
                                        
                                        yAxisGridStyle      : gridStyle,
                                        yAxisLabelPosition  : .leading,
                                        yAxisLabelColour    : Color.primary,
                                        yAxisNumberOfLabels : 7,
                                        
                                        baseline            : .minimumWithMaximum(of: 40),
                                        topLine             : .maximum(of: 80),
                                        
                                        globalAnimation     : .easeOut(duration: 1))
        
        return LineChartData(dataSets       : data,
                             metadata       : metadata,
                             chartStyle     : chartStyle)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Charts()
    }
}

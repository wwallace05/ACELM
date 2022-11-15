//
//  ContentView.swift
//  ACELM
//
//  Created by Will Wallace on 10/25/22.
//

import SwiftUI
import FirebaseAnalytics
import FirebaseAnalyticsSwift

struct ContentView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @State var Outlet1 = Outlet(name: "Outlet 1", status: true)
    @State var Outlet2 = Outlet(name: "Outlet 2", status: true)
    @State var Outlet3 = Outlet(name: "Outlet 3", status: true)
    
    enum viewGraphOf: String, CaseIterable, Identifiable{
        case all, Outlet1, Outlet2, Outlet3
        var id: Self{self}
    }
    
    @State private var selectedGraph = viewGraphOf.all
    
    enum viewTimeFrame: String, CaseIterable, Identifiable{
        case Instant, six, two, one
        var id: Self{self}
    }
    
    @State private var selectedTimeFrame = viewTimeFrame.six
    
    //var enabled = "ON"
    //var disabled = "OFF"
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Power Consumption View")){
                    //Text("\n\n\n\n**This is where the graph will be\n\n\n")
                    Text("Outlet 1: 0   ~$")
                    Text("Outlet 2: 0   ~$")
                    Text("Outlet 3: 0   ~$")
                    
                }
                
                Section(){
//                    Text("Outlet View")
//                    Picker("Oulet View", selection: $selectedGraph){
//                        ForEach(viewGraphOf.allCases) { graphView in
//                            Text(graphView.rawValue.capitalized)
//                        }
//                    }
                    
                    Text("Time Frame (Hours)")
                    Picker("Time Frame", selection: $selectedTimeFrame){
                        ForEach(viewTimeFrame.allCases) { timeView in
                            Text(timeView.rawValue.capitalized)
                        }
                    }
                }.pickerStyle(.segmented)
                
                //GraphingView()
                
                OutletControl(Outlet1: self.$Outlet1, Outlet2: self.$Outlet2, Outlet3: self.$Outlet3)
                
            }
            .navigationTitle("Energy Load Monitor")
            
        }
        .analyticsScreen(name: "\(ContentView.self)")
    }
}


// will not apear in final rollout
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

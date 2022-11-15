//
//  OutletControl.swift
//  ACELM
//
//  Created by Will Wallace on 10/25/22.
//

import SwiftUI

struct OutletControl: View {
    @Binding var Outlet1: Outlet
    @Binding var Outlet2: Outlet
    @Binding var Outlet3: Outlet
    var body: some View {
        Section(header: Text("Oulet Control")){
            Toggle("Outlet 1", isOn: $Outlet1.status)
            Toggle("Outlet 2", isOn: $Outlet2.status)
            Toggle("Outlet 3", isOn: $Outlet3.status)
        }
    }
}

struct OutletControl_Previews: PreviewProvider {
    @State static var Outlet1: Outlet = Outlet(name: "name1", status: false)
    @State static var Outlet2: Outlet = Outlet(name: "name2", status: false)
    @State static var Outlet3: Outlet = Outlet(name: "name3", status: false)
    
    
    static var previews: some View {
        OutletControl(Outlet1: $Outlet1, Outlet2: $Outlet2, Outlet3: $Outlet3)
    }
}

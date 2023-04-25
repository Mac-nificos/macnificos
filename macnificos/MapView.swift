//
//  MapView.swift
//  macnificos
//
//  Created by CEDAM30 on 25/04/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.605210768991235, longitude: -99.03689901314186), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    var body: some View {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
                .sheet(isPresented: .constant(true)) {
                    Text("¿A donde vas?")
                    TextField("Buscar en mapa",text:
                            .constant("")
                        
                    ).padding(.vertical,10)
                        .padding(.horizontal)
                        .background{
                            RoundedRectangle(cornerRadius: 10,style: .continuous).fill(.ultraThinMaterial)
                        }.presentationDetents([.height(150),.medium])
                }
        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}



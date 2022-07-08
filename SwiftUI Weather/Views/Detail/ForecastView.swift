//
//  ForecastView.swift
//  SwiftUI Weather
//
//  Created by Роман on 08.07.2022.
//

import SwiftUI

struct ForecastView: View {
    var bottomSheetTranslationProrated: CGFloat = 1
    @State private var selection = 0
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                //MARK: - Segmented Control
                SegmentedControl(selection: $selection)
            }
        }
        .backgroundBlur(radius: 25, opaque: true)
        .background(Color.bottomSheetBackground)
        .clipShape(RoundedRectangle(cornerRadius: 44))
        .innerShadow(shape: RoundedRectangle(cornerRadius: 44),
                     color: Color.bottomSheetBorderMiddle,
                     lineWidth: 1,
                     ofsetX: 0,
                     ofsetY: 1,
                     blur: 1,
                     blendMode: .overlay,
                     opacity: 1 - bottomSheetTranslationProrated)
        .overlay {
            //MARK: - Drag indicator
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.3))
                .frame(width: 48,
                       height: 5)
                .frame(height: 20)
                .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
            .background(Color.background)
            .preferredColorScheme(.dark)
    }
}

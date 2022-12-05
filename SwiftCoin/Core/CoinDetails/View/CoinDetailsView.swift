//
//  CoinDetailsView.swift
//  SwiftCoin
//
//  Created by Apurva Deshmukh on 12/3/22.
//

import SwiftUI

struct CoinDetailsView: View {
    let coin: Coin
    let viewModel: CoinDetailsViewModel
    
    init(coin: Coin) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coin: coin)
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            // chart
            ChartView(viewModel: viewModel)
                .frame(height: 250)
                .padding(.vertical)
                .shadow(color: viewModel.chartLineColor, radius: 10)
                .shadow(color: viewModel.chartLineColor.opacity(0.5), radius: 10)
            
            // overview
            CoinDetailsSection(model: viewModel.overViewSectionModel)
                .padding(.vertical)
            
            Divider()
            // additional details
            CoinDetailsSection(model: viewModel.additionalDetailSectionModel)
                .padding(.vertical)
        }
        .padding()
        .navigationTitle(viewModel.coinName)
    }
    
}

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView(coin: dev.coin)
    }
}

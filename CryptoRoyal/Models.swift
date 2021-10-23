//
//  Models.swift
//  CryptoRoyal
//
//  Created by Luis Urrutia on 10/23/21.
//

import Foundation

struct Crypto: Codable  {
    let asset_id: String
    let name: String?
    let price_usd: Float?
    let id_icon: String?
}

struct Icon: Codable {
    let asset_id: String
    let url: String
}
//
//"asset_id": "BTC",
//"name": "Bitcoin",
//"type_is_crypto": 1,
//"data_quote_start": "2014-02-24T17:43:05.0000000Z",
//"data_quote_end": "2021-10-23T05:00:01.2724781Z",
//"data_orderbook_start": "2014-02-24T17:43:05.0000000Z",
//"data_orderbook_end": "2020-08-05T14:38:38.3413202Z",
//"data_trade_start": "2010-07-17T23:09:17.0000000Z",
//"data_trade_end": "2021-10-23T04:59:03.0340000Z",
//"data_symbols_count": 67359,
//"volume_1hrs_usd": 11490522276564.26,
//"volume_1day_usd": 395009563473039.78,
//"volume_1mth_usd": 16911354575369758.76,
//"price_usd": 60923.100058949188088910487928,
//"id_icon": "4caf2b16-a017-4e26-a348-2cea69c34cba",
//"data_start": "2010-07-17",
//"data_end": "2021-10-23"
//},

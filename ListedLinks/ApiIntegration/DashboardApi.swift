//
//  DashboardApi.swift
//  ListedLinks
//
//  Created by Keerthi Devipriya(kdp) on 11/03/23.
//

import Foundation


class DashboardApi {
    static func loadDashboardJson() -> DashboardModel? {
        if let url = Bundle.main.url(forResource: "dashboardResponse", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(DashboardModel.self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}

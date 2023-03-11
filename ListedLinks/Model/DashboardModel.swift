//
//  DashboardModel.swift
//  ListedLinks
//
//  Created by Keerthi Devipriya(kdp) on 11/03/23.
//
import Foundation

struct DashboardModel: Codable {

  var status                : Bool?   = nil
  var statusCode            : Int?    = nil
  var message               : String? = nil
  var supportWhatsappNumber : String? = nil
  var extraIncome           : Double? = nil
  var totalLinks            : Int?    = nil
  var totalClicks           : Int?    = nil
  var todayClicks           : Int?    = nil
  var topSource             : String? = nil
  var topLocation           : String? = nil
  var startTime             : String? = nil
  var linksCreatedToday     : Int?    = nil
  var name                  : String? = nil
  var data                  : Data?   = Data()

  enum CodingKeys: String, CodingKey {

    case status                = "status"
    case statusCode            = "statusCode"
    case message               = "message"
    case supportWhatsappNumber = "support_whatsapp_number"
    case extraIncome           = "extra_income"
    case totalLinks            = "total_links"
    case totalClicks           = "total_clicks"
    case todayClicks           = "today_clicks"
    case topSource             = "top_source"
    case topLocation           = "top_location"
    case startTime             = "startTime"
    case linksCreatedToday     = "links_created_today"
    case name                  = "name"
    case data                  = "data"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    status                = try values.decodeIfPresent(Bool.self   , forKey: .status                )
    statusCode            = try values.decodeIfPresent(Int.self    , forKey: .statusCode            )
    message               = try values.decodeIfPresent(String.self , forKey: .message               )
    supportWhatsappNumber = try values.decodeIfPresent(String.self , forKey: .supportWhatsappNumber )
    extraIncome           = try values.decodeIfPresent(Double.self , forKey: .extraIncome           )
    totalLinks            = try values.decodeIfPresent(Int.self    , forKey: .totalLinks            )
    totalClicks           = try values.decodeIfPresent(Int.self    , forKey: .totalClicks           )
    todayClicks           = try values.decodeIfPresent(Int.self    , forKey: .todayClicks           )
    topSource             = try values.decodeIfPresent(String.self , forKey: .topSource             )
    topLocation           = try values.decodeIfPresent(String.self , forKey: .topLocation           )
    startTime             = try values.decodeIfPresent(String.self , forKey: .startTime             )
    linksCreatedToday     = try values.decodeIfPresent(Int.self    , forKey: .linksCreatedToday     )
    name                  = try values.decodeIfPresent(String.self    , forKey: .name     )
    data                  = try values.decodeIfPresent(Data.self   , forKey: .data                  )
 
  }

  init() {

  }
    
    
    
    struct RecentLinks: Codable {

      var urlId         : Int?    = nil
      var webLink       : String? = nil
      var smartLink     : String? = nil
      var title         : String? = nil
      var totalClicks   : Int?    = nil
      var originalImage : String? = nil
      var thumbnail     : String? = nil
      var timesAgo      : String? = nil
      var createdAt     : String? = nil
      var domainId      : String? = nil
      var urlPrefix     : String? = nil
      var urlSuffix     : String? = nil
      var app           : String? = nil

      enum CodingKeys: String, CodingKey {

        case urlId         = "url_id"
        case webLink       = "web_link"
        case smartLink     = "smart_link"
        case title         = "title"
        case totalClicks   = "total_clicks"
        case originalImage = "original_image"
        case thumbnail     = "thumbnail"
        case timesAgo      = "times_ago"
        case createdAt     = "created_at"
        case domainId      = "domain_id"
        case urlPrefix     = "url_prefix"
        case urlSuffix     = "url_suffix"
        case app           = "app"
      
      }

      init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        urlId         = try values.decodeIfPresent(Int.self    , forKey: .urlId         )
        webLink       = try values.decodeIfPresent(String.self , forKey: .webLink       )
        smartLink     = try values.decodeIfPresent(String.self , forKey: .smartLink     )
        title         = try values.decodeIfPresent(String.self , forKey: .title         )
        totalClicks   = try values.decodeIfPresent(Int.self    , forKey: .totalClicks   )
        originalImage = try values.decodeIfPresent(String.self , forKey: .originalImage )
        thumbnail     = try values.decodeIfPresent(String.self , forKey: .thumbnail     )
        timesAgo      = try values.decodeIfPresent(String.self , forKey: .timesAgo      )
        createdAt     = try values.decodeIfPresent(String.self , forKey: .createdAt     )
        domainId      = try values.decodeIfPresent(String.self , forKey: .domainId      )
        urlPrefix     = try values.decodeIfPresent(String.self , forKey: .urlPrefix     )
        urlSuffix     = try values.decodeIfPresent(String.self , forKey: .urlSuffix     )
        app           = try values.decodeIfPresent(String.self , forKey: .app           )
     
      }

      init() {}

    }

    
    
    struct TopLinks: Codable {

      var urlId         : Int?    = nil
      var webLink       : String? = nil
      var smartLink     : String? = nil
      var title         : String? = nil
      var totalClicks   : Int?    = nil
      var originalImage : String? = nil
      var thumbnail     : String? = nil
      var timesAgo      : String? = nil
      var createdAt     : String? = nil
      var domainId      : String? = nil
      var urlPrefix     : String? = nil
      var urlSuffix     : String? = nil
      var app           : String? = nil

      enum CodingKeys: String, CodingKey {

        case urlId         = "url_id"
        case webLink       = "web_link"
        case smartLink     = "smart_link"
        case title         = "title"
        case totalClicks   = "total_clicks"
        case originalImage = "original_image"
        case thumbnail     = "thumbnail"
        case timesAgo      = "times_ago"
        case createdAt     = "created_at"
        case domainId      = "domain_id"
        case urlPrefix     = "url_prefix"
        case urlSuffix     = "url_suffix"
        case app           = "app"
      
      }

      init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        urlId         = try values.decodeIfPresent(Int.self    , forKey: .urlId         )
        webLink       = try values.decodeIfPresent(String.self , forKey: .webLink       )
        smartLink     = try values.decodeIfPresent(String.self , forKey: .smartLink     )
        title         = try values.decodeIfPresent(String.self , forKey: .title         )
        totalClicks   = try values.decodeIfPresent(Int.self    , forKey: .totalClicks   )
        originalImage = try values.decodeIfPresent(String.self , forKey: .originalImage )
        thumbnail     = try values.decodeIfPresent(String.self , forKey: .thumbnail     )
        timesAgo      = try values.decodeIfPresent(String.self , forKey: .timesAgo      )
        createdAt     = try values.decodeIfPresent(String.self , forKey: .createdAt     )
        domainId      = try values.decodeIfPresent(String.self , forKey: .domainId      )
        urlPrefix     = try values.decodeIfPresent(String.self , forKey: .urlPrefix     )
        urlSuffix     = try values.decodeIfPresent(String.self , forKey: .urlSuffix     )
        app           = try values.decodeIfPresent(String.self , forKey: .app           )
     
      }

      init() {}

    }
    
    struct OverallUrlChart: Codable {

      var sep0223 : Int? = nil
      var oct0223 : Int? = nil
      var feb1123 : Int? = nil
      var feb1223 : Int? = nil
      var feb1323 : Int? = nil
      var feb1423 : Int? = nil
      var feb1523 : Int? = nil
      var feb1623 : Int? = nil
      var feb1723 : Int? = nil
      var feb1823 : Int? = nil
      var feb1923 : Int? = nil
      var feb2023 : Int? = nil
      var feb2123 : Int? = nil
      var feb2223 : Int? = nil
      var feb2323 : Int? = nil
      var feb2423 : Int? = nil
      var feb2523 : Int? = nil
      var feb2623 : Int? = nil
      var feb2723 : Int? = nil
      var feb2823 : Int? = nil
      var mar0123 : Int? = nil
      var mar0223 : Int? = nil
      var mar0323 : Int? = nil
      var mar0423 : Int? = nil
      var mar0523 : Int? = nil
      var mar0623 : Int? = nil
      var mar0723 : Int? = nil
      var mar0823 : Int? = nil
      var mar0923 : Int? = nil
      var mar1023 : Int? = nil
      var mar1123 : Int? = nil

      enum CodingKeys: String, CodingKey {

        case sep0223 = "2023-02-09"
        case oct0223 = "2023-02-10"
        case feb1123 = "2023-02-11"
        case feb1223 = "2023-02-12"
        case feb1323 = "2023-02-13"
        case feb1423 = "2023-02-14"
        case feb1523 = "2023-02-15"
        case feb1623 = "2023-02-16"
        case feb1723 = "2023-02-17"
        case feb1823 = "2023-02-18"
        case feb1923 = "2023-02-19"
        case feb2023 = "2023-02-20"
        case feb2123 = "2023-02-21"
        case feb2223 = "2023-02-22"
        case feb2323 = "2023-02-23"
        case feb2423 = "2023-02-24"
        case feb2523 = "2023-02-25"
        case feb2623 = "2023-02-26"
        case feb2723 = "2023-02-27"
        case feb2823 = "2023-02-28"
        case mar0123 = "2023-03-01"
        case mar0223 = "2023-03-02"
        case mar0323 = "2023-03-03"
        case mar0423 = "2023-03-04"
        case mar0523 = "2023-03-05"
        case mar0623 = "2023-03-06"
        case mar0723 = "2023-03-07"
        case mar0823 = "2023-03-08"
        case mar0923 = "2023-03-09"
        case mar1023 = "2023-03-10"
        case mar1123 = "2023-03-11"
      
      }

      init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        sep0223 = try values.decodeIfPresent(Int.self , forKey: .sep0223 )
        oct0223 = try values.decodeIfPresent(Int.self , forKey: .oct0223 )
        feb1123 = try values.decodeIfPresent(Int.self , forKey: .feb1123 )
        feb1223 = try values.decodeIfPresent(Int.self , forKey: .feb1223 )
        feb1323 = try values.decodeIfPresent(Int.self , forKey: .feb1323 )
        feb1423 = try values.decodeIfPresent(Int.self , forKey: .feb1423 )
        feb1523 = try values.decodeIfPresent(Int.self , forKey: .feb1523 )
        feb1623 = try values.decodeIfPresent(Int.self , forKey: .feb1623 )
        feb1723 = try values.decodeIfPresent(Int.self , forKey: .feb1723 )
        feb1823 = try values.decodeIfPresent(Int.self , forKey: .feb1823 )
        feb1923 = try values.decodeIfPresent(Int.self , forKey: .feb1923 )
        feb2023 = try values.decodeIfPresent(Int.self , forKey: .feb2023 )
        feb2123 = try values.decodeIfPresent(Int.self , forKey: .feb2123 )
        feb2223 = try values.decodeIfPresent(Int.self , forKey: .feb2223 )
        feb2323 = try values.decodeIfPresent(Int.self , forKey: .feb2323 )
        feb2423 = try values.decodeIfPresent(Int.self , forKey: .feb2423 )
        feb2523 = try values.decodeIfPresent(Int.self , forKey: .feb2523 )
        feb2623 = try values.decodeIfPresent(Int.self , forKey: .feb2623 )
        feb2723 = try values.decodeIfPresent(Int.self , forKey: .feb2723 )
        feb2823 = try values.decodeIfPresent(Int.self , forKey: .feb2823 )
        mar0123 = try values.decodeIfPresent(Int.self , forKey: .mar0123 )
        mar0223 = try values.decodeIfPresent(Int.self , forKey: .mar0223 )
        mar0323 = try values.decodeIfPresent(Int.self , forKey: .mar0323 )
        mar0423 = try values.decodeIfPresent(Int.self , forKey: .mar0423 )
        mar0523 = try values.decodeIfPresent(Int.self , forKey: .mar0523 )
        mar0623 = try values.decodeIfPresent(Int.self , forKey: .mar0623 )
        mar0723 = try values.decodeIfPresent(Int.self , forKey: .mar0723 )
        mar0823 = try values.decodeIfPresent(Int.self , forKey: .mar0823 )
        mar0923 = try values.decodeIfPresent(Int.self , forKey: .mar0923 )
        mar1023 = try values.decodeIfPresent(Int.self , forKey: .mar1023 )
        mar1123 = try values.decodeIfPresent(Int.self , forKey: .mar1123 )
     
      }

      init() {

      }

    }

    struct Data: Codable {

      var recentLinks     : [RecentLinks]?   = []
      var topLinks        : [TopLinks]?      = []
      var overallUrlChart : OverallUrlChart? = OverallUrlChart()

      enum CodingKeys: String, CodingKey {

        case recentLinks     = "recent_links"
        case topLinks        = "top_links"
        case overallUrlChart = "overall_url_chart"
      
      }

      init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        recentLinks     = try values.decodeIfPresent([RecentLinks].self   , forKey: .recentLinks     )
        topLinks        = try values.decodeIfPresent([TopLinks].self      , forKey: .topLinks        )
        overallUrlChart = try values.decodeIfPresent(OverallUrlChart.self , forKey: .overallUrlChart )
     
      }

      init() {

      }

    }
}

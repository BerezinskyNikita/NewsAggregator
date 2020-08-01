import Foundation

struct NewsCategoryUrls {
    
    enum urls: String {
        case business = "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=8e4bfcbe5d0243448601ad3d3370e19f"
        case bitcoin = "http://newsapi.org/v2/everything?q=bitcoin&from=2020-06-15&sortBy=publishedAt&apiKey=8e4bfcbe5d0243448601ad3d3370e19f"
        case techcrunch = "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=8e4bfcbe5d0243448601ad3d3370e19f"
    }
}

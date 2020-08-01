import Foundation

struct NewsNetwork {
    
    func getNewsFromUrl(url: String) -> NewsModel {
        
        guard let url = URL(string: url) else { return NewsModel() }
            if let data = try? Data(contentsOf: url) {
                if let jsonNews = try? JSONDecoder().decode(NewsModel.self, from: data) {

                    return jsonNews
                }
            }
        
        return NewsModel()
    }
}

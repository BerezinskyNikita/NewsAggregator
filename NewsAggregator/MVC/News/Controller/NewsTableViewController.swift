import UIKit

class NewsTableViewController: UITableViewController {

    fileprivate var news = NewsModel()
    override func viewDidLoad() {
        super.viewDidLoad()

        news = NewsNetwork().getNewsFromUrl(url: "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=8e4bfcbe5d0243448601ad3d3370e19f")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return news.articles?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableViewCell

        let article = news.articles?[indexPath.row]
        cell.titleLabel.text = article?.title
        cell.authorLabel.text = article?.author
        cell.descriptionLabel.text = article?.description

        return cell
    }
    
}

import UIKit
import PlaygroundSupport

class TableViewController : UITableViewController {
    
    var listitems = ["shawn","bill","larry"]
    var text = ["Red", "Blue", "Black", "Yellow", "Green"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return text.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "\(text[indexPath.row])"
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

}

let tableViewController = TableViewController(style: .plain)

PlaygroundPage.current.liveView = tableViewController

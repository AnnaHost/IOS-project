import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var avatar: UIImageView!
    @IBAction func showImage(_ sender: Any) {
       //"https://picsum.photos/200"
        URLSession.shared.downloadTask(with: URL(string: "https://picsum.photos/200")!) { (urlValue, response, error) in
            let data = try? Data(contentsOf: urlValue!)
            let image = UIImage(data: data!)
            DispatchQueue.main.async {
                self.avatar.image = image
            }
        }.resume()
    }
}

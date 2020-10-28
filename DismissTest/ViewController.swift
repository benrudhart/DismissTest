import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        isModalInPresentation = true
    }

    @IBAction func dismiss() {
        showSpinner()

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: true, completion: nil)
        }
    }

    func showSpinner() {
        let spinner = UIActivityIndicatorView()
        spinner.startAnimating()
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: spinner)
    }
}

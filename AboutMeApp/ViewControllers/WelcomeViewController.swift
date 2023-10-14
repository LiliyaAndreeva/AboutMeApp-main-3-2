
import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    var user: User!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(user.person.name)"
    }
    
}

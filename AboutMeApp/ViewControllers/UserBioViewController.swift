
import UIKit

final class UserBioViewController: UIViewController {
    
    
    @IBOutlet weak var userBio: UINavigationItem!

    @IBOutlet weak var personsDescribe: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        userBio.title = "\(User.getUser().person.name) Bio"
        personsDescribe.text = User.getUser().person.describe
    }
    
}

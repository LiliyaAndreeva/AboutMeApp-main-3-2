
import UIKit

final class UserInfoViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var UserName: UINavigationItem!
   
    @IBOutlet weak var personsName: UILabel!
    @IBOutlet weak var personsSurename: UILabel!
    @IBOutlet weak var personsCompany: UILabel!
    @IBOutlet weak var personsOtdel: UILabel!
    @IBOutlet weak var personsRole: UILabel!
    
    var user: User!
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserName.title  = user.person.name
        personsName.text = user.person.name
        personsSurename.text = user.person.surename
        personsCompany.text = user.person.company
        personsOtdel.text = user.person.otdel
        personsRole.text = user.person.role
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else {return}
        userBioVC.user = user
        }
}

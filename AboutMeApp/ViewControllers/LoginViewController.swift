import UIKit


final class LoginViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    let person = User.getUser()
    
    
    // MARK: - override funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
        userNameTF.text = person.user
        passwordTF.text = person.password
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        guard userNameTF.text == person.user,
              passwordTF.text == person.password
        else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login or password")
            passwordTF.text = ""
            return false
        }
        return true
    }
    // MARK: - override func prepare for
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
                let tabBarController = segue.destination as? UITabBarController
                guard let tabBarController = segue.destination as? TabBarController else {return}
                tabBarController.user = person
        
        
//        tabBarController.viewControllers?.forEach{ viewController in
//            if let welcomVC = viewController as? WelcomeViewController {
//                welcomVC.user = person
//            } else if let navigationVC = viewController as? UINavigationController{
//                guard let userInfoVC = navigationVC.topViewController as? UserInfoViewController else {return}
//                userInfoVC.user  = person
//            }
        
    }
        
        
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super .touchesBegan(touches, with: event)
            view.endEditing(true)
        }
        
        // MARK: - IBAction funcs
        @IBAction func forgotRegisterData(_ sender: UIButton) {
            sender.tag == 0
            ? showAlert(with: "Oops!", and: "Your name is \(person.user) 😉")
            : showAlert(with: "Oops!", and: "Your password is \(person.password) 😉")
        }
        
        
        @IBAction func unwind(for segue: UIStoryboardSegue) {
            userNameTF.text = ""
            passwordTF.text = ""
        }
    }

    
    // MARK: - extencion
    extension LoginViewController{
        private func showAlert(with title: String, and messege: String) {
            let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            
            present(alert, animated: true)
        }
    }
    


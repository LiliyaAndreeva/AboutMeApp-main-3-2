
import Foundation

struct User {
    let id = UUID()
    let user: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(user: "Lily",
             password: "12345",
             person: Person.getPerson())
    }
}

struct Person{
    let name: String
    let surename: String
    let company: String
    let otdel: String
    let role: String
    let image: String
    let describe: String
    
    var fullname: String {
       " \(name) + \(surename) "
    }
    
    static func getPerson() -> Person{
        Person(name: "Lily",
               surename: "Andreeva",
               company: "Xantis",
               otdel: "Rx",
               role: "Medical presentation",
               image: "картинка",
               describe:  "Меня зовут Лилия, родилась в сибири, небольшой город Нижневартовск ХМАО-Югра в 2012 году поступила в ТюмГМУ и переехала в г. Тюмень, по сей день живу и работаю в этом Лучшем городе земли ✨")
    }
}




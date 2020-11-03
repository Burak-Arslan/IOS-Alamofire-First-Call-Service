import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AF.request("https://api.androidhive.info/contacts/")
            .response{ respose in
            debugPrint(respose)
        }
        
        let header : HTTPHeaders = [.accept("application/json")]
        
        AF.request("https//httpbin.org/get",headers : header).responseJSON {response in
            print(response)
            
        }
    }
}


import Foundation
import Alamofire

class NetworkClient {
    typealias webServiceResponse = ([[ String:Any]]?, Error?)->Void
    
    func executeWebServiceCall(_ url: URL,completion : @escaping webServiceResponse) {
        
        Alamofire.Request(id: url).validate
                
        }
    }
}

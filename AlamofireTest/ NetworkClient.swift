import Foundation
import Alamofire


struct NetworkClient {
    typealias webServiceResponse = ([[String: Any]]?, Error?)-> Void
    
    func webServiceExecute(_ url: URL,completiom: @escaping webServiceResponse)  {
        AF.request(url).validate().responseJSON{ response in
            if let error = response.error{
                completiom(nil,error)
            }else if let jsonArray = response.result as? [[String: Any]]{
                
            }
        }
    }
}



import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: SuccessMessageResponse
        Used By: User
    */

    class SuccessMessageResponse: Codable {
        
        
        public var success: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(success: String? = nil) {
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(String.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



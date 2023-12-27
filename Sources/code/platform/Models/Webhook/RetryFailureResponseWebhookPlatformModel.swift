

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: RetryFailureResponse
        Used By: Webhook
    */

    class RetryFailureResponse: Codable {
        
        
        public var err: [Err]?
        

        public enum CodingKeys: String, CodingKey {
            
            case err = "err"
            
        }

        public init(err: [Err]? = nil) {
            
            self.err = err
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    err = try container.decode([Err].self, forKey: .err)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(err, forKey: .err)
            
            
        }
        
    }
}







import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: CancelResponse
        Used By: Webhook
    */

    class CancelResponse: Codable {
        
        
        public var code: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
        }

        public init(code: Int? = nil) {
            
            self.code = code
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    code = try container.decode(Int.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
}





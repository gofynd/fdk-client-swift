

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: IsCreditlinePayload
        Used By: Finance
    */

    class IsCreditlinePayload: Codable {
        
        
        public var sellerId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
        }

        public init(sellerId: String? = nil) {
            
            self.sellerId = sellerId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerId = try container.decode(String.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
        }
        
    }
}





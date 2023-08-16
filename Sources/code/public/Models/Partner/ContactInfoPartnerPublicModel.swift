

import Foundation
public extension PublicClient.Partner {
    /*
        Model: ContactInfo
        Used By: Partner
    */

    class ContactInfo: Codable {
        
        
        public var support: Support?
        

        public enum CodingKeys: String, CodingKey {
            
            case support = "support"
            
        }

        public init(support: Support? = nil) {
            
            self.support = support
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    support = try container.decode(Support.self, forKey: .support)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(support, forKey: .support)
            
            
        }
        
    }
}

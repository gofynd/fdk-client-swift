

import Foundation
public extension PublicClient.Content {
    /*
        Model: BusinessAccount
        Used By: Content
    */

    class BusinessAccount: Codable {
        
        
        public var isLimit: Bool?
        
        public var threshold: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isLimit = "is_limit"
            
            case threshold = "threshold"
            
        }

        public init(isLimit: Bool? = nil, threshold: Int? = nil) {
            
            self.isLimit = isLimit
            
            self.threshold = threshold
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isLimit = try container.decode(Bool.self, forKey: .isLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    threshold = try container.decode(Int.self, forKey: .threshold)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isLimit, forKey: .isLimit)
            
            
            
            try? container.encodeIfPresent(threshold, forKey: .threshold)
            
            
        }
        
    }
}

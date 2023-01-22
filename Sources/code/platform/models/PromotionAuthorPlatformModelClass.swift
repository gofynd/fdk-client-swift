

import Foundation
public extension PlatformClient {
    /*
        Model: PromotionAuthor
        Used By: Cart
    */

    class PromotionAuthor: Codable {
        
        
        public var modifiedBy: String?
        
        public var createdBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedBy = "modified_by"
            
            case createdBy = "created_by"
            
        }

        public init(createdBy: String? = nil, modifiedBy: String? = nil) {
            
            self.modifiedBy = modifiedBy
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}

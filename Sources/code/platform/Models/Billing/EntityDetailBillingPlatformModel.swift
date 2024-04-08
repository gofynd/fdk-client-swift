

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: EntityDetail
        Used By: Billing
    */

    class EntityDetail: Codable {
        
        
        public var entity: String?
        
        public var item: Subscription?
        

        public enum CodingKeys: String, CodingKey {
            
            case entity = "entity"
            
            case item = "item"
            
        }

        public init(entity: String? = nil, item: Subscription? = nil) {
            
            self.entity = entity
            
            self.item = item
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    entity = try container.decode(String.self, forKey: .entity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    item = try container.decode(Subscription.self, forKey: .item)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
        }
        
    }
}





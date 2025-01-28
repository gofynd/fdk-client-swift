

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionPartialUpdate
        Used By: Cart
    */

    class PromotionPartialUpdate: Codable {
        
        
        public var publish: Bool?
        
        public var schedule: PromotionSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case publish = "publish"
            
            case schedule = "schedule"
            
        }

        public init(publish: Bool? = nil, schedule: PromotionSchedule? = nil) {
            
            self.publish = publish
            
            self.schedule = schedule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    publish = try container.decode(Bool.self, forKey: .publish)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(publish, forKey: .publish)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
}



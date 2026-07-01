

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferPartialUpdate
        Used By: Cart
    */

    class OfferPartialUpdate: Codable {
        
        
        public var schedule: PromotionSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "schedule"
            
        }

        public init(schedule: PromotionSchedule? = nil) {
            
            self.schedule = schedule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
}



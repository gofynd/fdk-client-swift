

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Meta
        Used By: Billing
    */

    class Meta: Codable {
        
        
        public var subscribe: Bool?
        
        public var isCustomPlan: Bool?
        
        public var isPlanUpgrade: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case subscribe = "subscribe"
            
            case isCustomPlan = "is_custom_plan"
            
            case isPlanUpgrade = "is_plan_upgrade"
            
        }

        public init(isCustomPlan: Bool? = nil, isPlanUpgrade: Bool? = nil, subscribe: Bool? = nil) {
            
            self.subscribe = subscribe
            
            self.isCustomPlan = isCustomPlan
            
            self.isPlanUpgrade = isPlanUpgrade
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subscribe = try container.decode(Bool.self, forKey: .subscribe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCustomPlan = try container.decode(Bool.self, forKey: .isCustomPlan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPlanUpgrade = try container.decode(Bool.self, forKey: .isPlanUpgrade)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscribe, forKey: .subscribe)
            
            
            
            
            try? container.encodeIfPresent(isCustomPlan, forKey: .isCustomPlan)
            
            
            
            
            try? container.encodeIfPresent(isPlanUpgrade, forKey: .isPlanUpgrade)
            
            
        }
        
    }
}





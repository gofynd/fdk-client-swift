

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: DowngradePlanReq
        Used By: Billing
    */

    class DowngradePlanReq: Codable {
        
        
        public var uniqueId: String?
        
        public var type: String?
        
        public var productSuite: String?
        
        public var planId: String?
        
        public var reason: String?
        
        public var platform: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueId = "unique_id"
            
            case type = "type"
            
            case productSuite = "product_suite"
            
            case planId = "plan_id"
            
            case reason = "reason"
            
            case platform = "platform"
            
        }

        public init(planId: String? = nil, platform: String? = nil, productSuite: String? = nil, reason: String? = nil, type: String? = nil, uniqueId: String? = nil) {
            
            self.uniqueId = uniqueId
            
            self.type = type
            
            self.productSuite = productSuite
            
            self.planId = planId
            
            self.reason = reason
            
            self.platform = platform
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productSuite = try container.decode(String.self, forKey: .productSuite)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    planId = try container.decode(String.self, forKey: .planId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(productSuite, forKey: .productSuite)
            
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
        }
        
    }
}





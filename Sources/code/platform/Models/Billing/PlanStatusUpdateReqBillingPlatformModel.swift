

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PlanStatusUpdateReq
        Used By: Billing
    */

    class PlanStatusUpdateReq: Codable {
        
        
        public var planId: String?
        
        public var reason: String?
        
        public var sellerStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case planId = "plan_id"
            
            case reason = "reason"
            
            case sellerStatus = "seller_status"
            
        }

        public init(planId: String? = nil, reason: String? = nil, sellerStatus: String? = nil) {
            
            self.planId = planId
            
            self.reason = reason
            
            self.sellerStatus = sellerStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    sellerStatus = try container.decode(String.self, forKey: .sellerStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(sellerStatus, forKey: .sellerStatus)
            
            
        }
        
    }
}





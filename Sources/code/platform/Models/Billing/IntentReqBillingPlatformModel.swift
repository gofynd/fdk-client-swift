

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: IntentReq
        Used By: Billing
    */

    class IntentReq: Codable {
        
        
        public var uniqueExternalId: String?
        
        public var planId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueExternalId = "unique_external_id"
            
            case planId = "plan_id"
            
        }

        public init(planId: String? = nil, uniqueExternalId: String? = nil) {
            
            self.uniqueExternalId = uniqueExternalId
            
            self.planId = planId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
        }
        
    }
}





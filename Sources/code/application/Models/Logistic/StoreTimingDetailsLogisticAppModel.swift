

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: StoreTimingDetails
        Used By: Logistic
    */
    class StoreTimingDetails: Codable {
        
        public var operationalTiming: [StoreTiming]?
        
        public var orderAcceptanceTiming: [StoreTiming]?
        

        public enum CodingKeys: String, CodingKey {
            
            case operationalTiming = "operational_timing"
            
            case orderAcceptanceTiming = "order_acceptance_timing"
            
        }

        public init(operationalTiming: [StoreTiming]? = nil, orderAcceptanceTiming: [StoreTiming]? = nil) {
            
            self.operationalTiming = operationalTiming
            
            self.orderAcceptanceTiming = orderAcceptanceTiming
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                operationalTiming = try container.decode([StoreTiming].self, forKey: .operationalTiming)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderAcceptanceTiming = try container.decode([StoreTiming].self, forKey: .orderAcceptanceTiming)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(operationalTiming, forKey: .operationalTiming)
            
            
            
            try? container.encodeIfPresent(orderAcceptanceTiming, forKey: .orderAcceptanceTiming)
            
            
        }
        
    }
}

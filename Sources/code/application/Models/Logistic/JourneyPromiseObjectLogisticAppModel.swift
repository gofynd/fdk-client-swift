

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: JourneyPromiseObject
        Used By: Logistic
    */
    class JourneyPromiseObject: Codable {
        
        public var journey: String?
        
        public var deliveryPromise: DeliveryPromiseObject?
        

        public enum CodingKeys: String, CodingKey {
            
            case journey = "journey"
            
            case deliveryPromise = "delivery_promise"
            
        }

        public init(deliveryPromise: DeliveryPromiseObject? = nil, journey: String? = nil) {
            
            self.journey = journey
            
            self.deliveryPromise = deliveryPromise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                journey = try container.decode(String.self, forKey: .journey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryPromise = try container.decode(DeliveryPromiseObject.self, forKey: .deliveryPromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
        }
        
    }
}

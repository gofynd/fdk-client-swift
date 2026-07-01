

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: DeliveryReattemptRequestSchema
        Used By: Order
    */
    class DeliveryReattemptRequestSchema: Codable {
        
        public var deliveryAddress: [String: Any]?
        
        public var deliveryRescheduleDate: String
        
        public var remark: String
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryAddress = "delivery_address"
            
            case deliveryRescheduleDate = "delivery_reschedule_date"
            
            case remark = "remark"
            
        }

        public init(deliveryAddress: [String: Any]? = nil, deliveryRescheduleDate: String, remark: String) {
            
            self.deliveryAddress = deliveryAddress
            
            self.deliveryRescheduleDate = deliveryRescheduleDate
            
            self.remark = remark
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            deliveryRescheduleDate = try container.decode(String.self, forKey: .deliveryRescheduleDate)
            
            
            
            
            remark = try container.decode(String.self, forKey: .remark)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            try? container.encodeIfPresent(deliveryRescheduleDate, forKey: .deliveryRescheduleDate)
            
            
            
            try? container.encodeIfPresent(remark, forKey: .remark)
            
            
        }
        
    }
}

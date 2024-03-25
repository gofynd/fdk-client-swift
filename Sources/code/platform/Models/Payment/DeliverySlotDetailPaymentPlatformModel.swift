

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: DeliverySlotDetail
        Used By: Payment
    */

    class DeliverySlotDetail: Codable {
        
        
        public var deliverySlotTiming: String?
        
        public var deliverySlotId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliverySlotTiming = "delivery_slot_timing"
            
            case deliverySlotId = "delivery_slot_id"
            
        }

        public init(deliverySlotId: Int? = nil, deliverySlotTiming: String? = nil) {
            
            self.deliverySlotTiming = deliverySlotTiming
            
            self.deliverySlotId = deliverySlotId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliverySlotTiming = try container.decode(String.self, forKey: .deliverySlotTiming)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlotId = try container.decode(Int.self, forKey: .deliverySlotId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliverySlotTiming, forKey: .deliverySlotTiming)
            
            
            
            
            try? container.encodeIfPresent(deliverySlotId, forKey: .deliverySlotId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: DeliverySlotDetail
        Used By: Payment
    */

    class DeliverySlotDetail: Codable {
        
        
        public var deliverySlotTiming: String?
        
        public var deliverySlotId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliverySlotTiming = "delivery_slot_timing"
            
            case deliverySlotId = "delivery_slot_id"
            
        }

        public init(deliverySlotId: Int? = nil, deliverySlotTiming: String? = nil) {
            
            self.deliverySlotTiming = deliverySlotTiming
            
            self.deliverySlotId = deliverySlotId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliverySlotTiming = try container.decode(String.self, forKey: .deliverySlotTiming)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlotId = try container.decode(Int.self, forKey: .deliverySlotId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliverySlotTiming, forKey: .deliverySlotTiming)
            
            
            
            
            try? container.encodeIfPresent(deliverySlotId, forKey: .deliverySlotId)
            
            
        }
        
    }
}



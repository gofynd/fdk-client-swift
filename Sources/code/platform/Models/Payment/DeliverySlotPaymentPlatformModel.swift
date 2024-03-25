

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: DeliverySlot
        Used By: Payment
    */

    class DeliverySlot: Codable {
        
        
        public var date: String?
        
        public var deliverySlot: [DeliverySlotDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case date = "date"
            
            case deliverySlot = "delivery_slot"
            
        }

        public init(date: String? = nil, deliverySlot: [DeliverySlotDetail]? = nil) {
            
            self.date = date
            
            self.deliverySlot = deliverySlot
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    date = try container.decode(String.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlot = try container.decode([DeliverySlotDetail].self, forKey: .deliverySlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: DeliverySlot
        Used By: Payment
    */

    class DeliverySlot: Codable {
        
        
        public var date: String?
        
        public var deliverySlot: [DeliverySlotDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case date = "date"
            
            case deliverySlot = "delivery_slot"
            
        }

        public init(date: String? = nil, deliverySlot: [DeliverySlotDetail]? = nil) {
            
            self.date = date
            
            self.deliverySlot = deliverySlot
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    date = try container.decode(String.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlot = try container.decode([DeliverySlotDetail].self, forKey: .deliverySlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
            
            
        }
        
    }
}



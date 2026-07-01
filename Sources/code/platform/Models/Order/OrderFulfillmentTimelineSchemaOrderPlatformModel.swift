

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderFulfillmentTimelineSchema
        Used By: Order
    */

    class OrderFulfillmentTimelineSchema: Codable {
        
        
        public var dpPickupSlot: DpPickupSlotSchema?
        
        public var dispatchAfterDate: String?
        
        public var dispatchByDate: String?
        
        public var confirmByDate: String?
        
        public var customerPickupSlot: CustomerPickupSlotSchema?
        
        public var packByDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpPickupSlot = "dp_pickup_slot"
            
            case dispatchAfterDate = "dispatch_after_date"
            
            case dispatchByDate = "dispatch_by_date"
            
            case confirmByDate = "confirm_by_date"
            
            case customerPickupSlot = "customer_pickup_slot"
            
            case packByDate = "pack_by_date"
            
        }

        public init(confirmByDate: String? = nil, customerPickupSlot: CustomerPickupSlotSchema? = nil, dispatchAfterDate: String? = nil, dispatchByDate: String? = nil, dpPickupSlot: DpPickupSlotSchema? = nil, packByDate: String? = nil) {
            
            self.dpPickupSlot = dpPickupSlot
            
            self.dispatchAfterDate = dispatchAfterDate
            
            self.dispatchByDate = dispatchByDate
            
            self.confirmByDate = confirmByDate
            
            self.customerPickupSlot = customerPickupSlot
            
            self.packByDate = packByDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dpPickupSlot = try container.decode(DpPickupSlotSchema.self, forKey: .dpPickupSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dispatchAfterDate = try container.decode(String.self, forKey: .dispatchAfterDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dispatchByDate = try container.decode(String.self, forKey: .dispatchByDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    confirmByDate = try container.decode(String.self, forKey: .confirmByDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerPickupSlot = try container.decode(CustomerPickupSlotSchema.self, forKey: .customerPickupSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packByDate = try container.decode(String.self, forKey: .packByDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dpPickupSlot, forKey: .dpPickupSlot)
            
            
            
            
            try? container.encodeIfPresent(dispatchAfterDate, forKey: .dispatchAfterDate)
            
            
            
            
            try? container.encodeIfPresent(dispatchByDate, forKey: .dispatchByDate)
            
            
            
            
            try? container.encodeIfPresent(confirmByDate, forKey: .confirmByDate)
            
            
            
            
            try? container.encodeIfPresent(customerPickupSlot, forKey: .customerPickupSlot)
            
            
            
            
            try? container.encodeIfPresent(packByDate, forKey: .packByDate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderFulfillmentTimelineSchema
        Used By: Order
    */

    class OrderFulfillmentTimelineSchema: Codable {
        
        
        public var dpPickupSlot: DpPickupSlotSchema?
        
        public var dispatchAfterDate: String?
        
        public var dispatchByDate: String?
        
        public var confirmByDate: String?
        
        public var customerPickupSlot: CustomerPickupSlotSchema?
        
        public var packByDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpPickupSlot = "dp_pickup_slot"
            
            case dispatchAfterDate = "dispatch_after_date"
            
            case dispatchByDate = "dispatch_by_date"
            
            case confirmByDate = "confirm_by_date"
            
            case customerPickupSlot = "customer_pickup_slot"
            
            case packByDate = "pack_by_date"
            
        }

        public init(confirmByDate: String? = nil, customerPickupSlot: CustomerPickupSlotSchema? = nil, dispatchAfterDate: String? = nil, dispatchByDate: String? = nil, dpPickupSlot: DpPickupSlotSchema? = nil, packByDate: String? = nil) {
            
            self.dpPickupSlot = dpPickupSlot
            
            self.dispatchAfterDate = dispatchAfterDate
            
            self.dispatchByDate = dispatchByDate
            
            self.confirmByDate = confirmByDate
            
            self.customerPickupSlot = customerPickupSlot
            
            self.packByDate = packByDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dpPickupSlot = try container.decode(DpPickupSlotSchema.self, forKey: .dpPickupSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dispatchAfterDate = try container.decode(String.self, forKey: .dispatchAfterDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dispatchByDate = try container.decode(String.self, forKey: .dispatchByDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    confirmByDate = try container.decode(String.self, forKey: .confirmByDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerPickupSlot = try container.decode(CustomerPickupSlotSchema.self, forKey: .customerPickupSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packByDate = try container.decode(String.self, forKey: .packByDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dpPickupSlot, forKey: .dpPickupSlot)
            
            
            
            
            try? container.encodeIfPresent(dispatchAfterDate, forKey: .dispatchAfterDate)
            
            
            
            
            try? container.encodeIfPresent(dispatchByDate, forKey: .dispatchByDate)
            
            
            
            
            try? container.encodeIfPresent(confirmByDate, forKey: .confirmByDate)
            
            
            
            
            try? container.encodeIfPresent(customerPickupSlot, forKey: .customerPickupSlot)
            
            
            
            
            try? container.encodeIfPresent(packByDate, forKey: .packByDate)
            
            
        }
        
    }
}



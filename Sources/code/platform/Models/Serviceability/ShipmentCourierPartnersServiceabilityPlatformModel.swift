

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentCourierPartners
        Used By: Serviceability
    */

    class ShipmentCourierPartners: Codable {
        
        
        public var id: String?
        
        public var courierPartners: [CourierPartners]?
        
        public var deliveryPromise: CourierPartnerPromise?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case courierPartners = "courier_partners"
            
            case deliveryPromise = "delivery_promise"
            
        }

        public init(courierPartners: [CourierPartners]? = nil, deliveryPromise: CourierPartnerPromise? = nil, id: String? = nil) {
            
            self.id = id
            
            self.courierPartners = courierPartners
            
            self.deliveryPromise = deliveryPromise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartners = try container.decode([CourierPartners].self, forKey: .courierPartners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryPromise = try container.decode(CourierPartnerPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentCourierPartners
        Used By: Serviceability
    */

    class ShipmentCourierPartners: Codable {
        
        
        public var id: String?
        
        public var courierPartners: [CourierPartners]?
        
        public var deliveryPromise: CourierPartnerPromise?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case courierPartners = "courier_partners"
            
            case deliveryPromise = "delivery_promise"
            
        }

        public init(courierPartners: [CourierPartners]? = nil, deliveryPromise: CourierPartnerPromise? = nil, id: String? = nil) {
            
            self.id = id
            
            self.courierPartners = courierPartners
            
            self.deliveryPromise = deliveryPromise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartners = try container.decode([CourierPartners].self, forKey: .courierPartners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryPromise = try container.decode(CourierPartnerPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
        }
        
    }
}



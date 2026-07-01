

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerDetails
        Used By: Serviceability
    */

    class CourierPartnerDetails: Codable {
        
        
        public var toServiceability: LocationDetailsServiceability
        
        public var shipments: [CourierPartnerShipments]
        
        public var journey: String
        
        public var paymentMode: String?
        
        public var skipDeliveryRules: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case toServiceability = "to_serviceability"
            
            case shipments = "shipments"
            
            case journey = "journey"
            
            case paymentMode = "payment_mode"
            
            case skipDeliveryRules = "skip_delivery_rules"
            
        }

        public init(journey: String, paymentMode: String? = nil, shipments: [CourierPartnerShipments], skipDeliveryRules: Bool? = nil, toServiceability: LocationDetailsServiceability) {
            
            self.toServiceability = toServiceability
            
            self.shipments = shipments
            
            self.journey = journey
            
            self.paymentMode = paymentMode
            
            self.skipDeliveryRules = skipDeliveryRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                toServiceability = try container.decode(LocationDetailsServiceability.self, forKey: .toServiceability)
                
            
            
            
                shipments = try container.decode([CourierPartnerShipments].self, forKey: .shipments)
                
            
            
            
                journey = try container.decode(String.self, forKey: .journey)
                
            
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skipDeliveryRules = try container.decode(Bool.self, forKey: .skipDeliveryRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(skipDeliveryRules, forKey: .skipDeliveryRules)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerDetails
        Used By: Serviceability
    */

    class CourierPartnerDetails: Codable {
        
        
        public var toServiceability: LocationDetailsServiceability
        
        public var shipments: [CourierPartnerShipments]
        
        public var journey: String
        
        public var paymentMode: String?
        
        public var skipDeliveryRules: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case toServiceability = "to_serviceability"
            
            case shipments = "shipments"
            
            case journey = "journey"
            
            case paymentMode = "payment_mode"
            
            case skipDeliveryRules = "skip_delivery_rules"
            
        }

        public init(journey: String, paymentMode: String? = nil, shipments: [CourierPartnerShipments], skipDeliveryRules: Bool? = nil, toServiceability: LocationDetailsServiceability) {
            
            self.toServiceability = toServiceability
            
            self.shipments = shipments
            
            self.journey = journey
            
            self.paymentMode = paymentMode
            
            self.skipDeliveryRules = skipDeliveryRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                toServiceability = try container.decode(LocationDetailsServiceability.self, forKey: .toServiceability)
                
            
            
            
                shipments = try container.decode([CourierPartnerShipments].self, forKey: .shipments)
                
            
            
            
                journey = try container.decode(String.self, forKey: .journey)
                
            
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skipDeliveryRules = try container.decode(Bool.self, forKey: .skipDeliveryRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(skipDeliveryRules, forKey: .skipDeliveryRules)
            
            
        }
        
    }
}



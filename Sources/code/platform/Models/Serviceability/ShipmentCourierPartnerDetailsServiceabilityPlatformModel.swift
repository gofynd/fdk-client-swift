

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentCourierPartnerDetails
        Used By: Serviceability
    */

    class ShipmentCourierPartnerDetails: Codable {
        
        
        public var fromLocation: ShipmentsCourierPartnersServiceability
        
        public var toLocation: ShipmentsCourierPartnersServiceability
        
        public var shipments: [Shipments]?
        
        public var journey: String?
        
        public var paymentMode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fromLocation = "from_location"
            
            case toLocation = "to_location"
            
            case shipments = "shipments"
            
            case journey = "journey"
            
            case paymentMode = "payment_mode"
            
        }

        public init(fromLocation: ShipmentsCourierPartnersServiceability, journey: String? = nil, paymentMode: String? = nil, shipments: [Shipments]? = nil, toLocation: ShipmentsCourierPartnersServiceability) {
            
            self.fromLocation = fromLocation
            
            self.toLocation = toLocation
            
            self.shipments = shipments
            
            self.journey = journey
            
            self.paymentMode = paymentMode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fromLocation = try container.decode(ShipmentsCourierPartnersServiceability.self, forKey: .fromLocation)
                
            
            
            
                toLocation = try container.decode(ShipmentsCourierPartnersServiceability.self, forKey: .toLocation)
                
            
            
            
                do {
                    shipments = try container.decode([Shipments].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    journey = try container.decode(String.self, forKey: .journey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromLocation, forKey: .fromLocation)
            
            
            
            
            try? container.encodeIfPresent(toLocation, forKey: .toLocation)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentCourierPartnerDetails
        Used By: Serviceability
    */

    class ShipmentCourierPartnerDetails: Codable {
        
        
        public var fromLocation: ShipmentsCourierPartnersServiceability
        
        public var toLocation: ShipmentsCourierPartnersServiceability
        
        public var shipments: [Shipments]?
        
        public var journey: String?
        
        public var paymentMode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fromLocation = "from_location"
            
            case toLocation = "to_location"
            
            case shipments = "shipments"
            
            case journey = "journey"
            
            case paymentMode = "payment_mode"
            
        }

        public init(fromLocation: ShipmentsCourierPartnersServiceability, journey: String? = nil, paymentMode: String? = nil, shipments: [Shipments]? = nil, toLocation: ShipmentsCourierPartnersServiceability) {
            
            self.fromLocation = fromLocation
            
            self.toLocation = toLocation
            
            self.shipments = shipments
            
            self.journey = journey
            
            self.paymentMode = paymentMode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fromLocation = try container.decode(ShipmentsCourierPartnersServiceability.self, forKey: .fromLocation)
                
            
            
            
                toLocation = try container.decode(ShipmentsCourierPartnersServiceability.self, forKey: .toLocation)
                
            
            
            
                do {
                    shipments = try container.decode([Shipments].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    journey = try container.decode(String.self, forKey: .journey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromLocation, forKey: .fromLocation)
            
            
            
            
            try? container.encodeIfPresent(toLocation, forKey: .toLocation)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
        }
        
    }
}



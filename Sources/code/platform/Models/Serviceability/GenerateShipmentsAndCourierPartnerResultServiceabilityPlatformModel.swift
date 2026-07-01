

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GenerateShipmentsAndCourierPartnerResult
        Used By: Serviceability
    */

    class GenerateShipmentsAndCourierPartnerResult: Codable {
        
        
        public var journey: String?
        
        public var toServiceability: CourierPartnerToServiceability?
        
        public var shipments: [CourierPartnerShipments]?
        
        public var paymentMode: String?
        
        public var toCity: String?
        
        public var isCodAvailable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case journey = "journey"
            
            case toServiceability = "to_serviceability"
            
            case shipments = "shipments"
            
            case paymentMode = "payment_mode"
            
            case toCity = "to_city"
            
            case isCodAvailable = "is_cod_available"
            
        }

        public init(isCodAvailable: Bool? = nil, journey: String? = nil, paymentMode: String? = nil, shipments: [CourierPartnerShipments]? = nil, toCity: String? = nil, toServiceability: CourierPartnerToServiceability? = nil) {
            
            self.journey = journey
            
            self.toServiceability = toServiceability
            
            self.shipments = shipments
            
            self.paymentMode = paymentMode
            
            self.toCity = toCity
            
            self.isCodAvailable = isCodAvailable
            
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
                    toServiceability = try container.decode(CourierPartnerToServiceability.self, forKey: .toServiceability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipments = try container.decode([CourierPartnerShipments].self, forKey: .shipments)
                
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
                
            
            
                do {
                    toCity = try container.decode(String.self, forKey: .toCity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(toCity, forKey: .toCity)
            
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GenerateShipmentsAndCourierPartnerResult
        Used By: Serviceability
    */

    class GenerateShipmentsAndCourierPartnerResult: Codable {
        
        
        public var journey: String?
        
        public var toServiceability: CourierPartnerToServiceability?
        
        public var shipments: [CourierPartnerShipments]?
        
        public var paymentMode: String?
        
        public var toCity: String?
        
        public var isCodAvailable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case journey = "journey"
            
            case toServiceability = "to_serviceability"
            
            case shipments = "shipments"
            
            case paymentMode = "payment_mode"
            
            case toCity = "to_city"
            
            case isCodAvailable = "is_cod_available"
            
        }

        public init(isCodAvailable: Bool? = nil, journey: String? = nil, paymentMode: String? = nil, shipments: [CourierPartnerShipments]? = nil, toCity: String? = nil, toServiceability: CourierPartnerToServiceability? = nil) {
            
            self.journey = journey
            
            self.toServiceability = toServiceability
            
            self.shipments = shipments
            
            self.paymentMode = paymentMode
            
            self.toCity = toCity
            
            self.isCodAvailable = isCodAvailable
            
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
                    toServiceability = try container.decode(CourierPartnerToServiceability.self, forKey: .toServiceability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipments = try container.decode([CourierPartnerShipments].self, forKey: .shipments)
                
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
                
            
            
                do {
                    toCity = try container.decode(String.self, forKey: .toCity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(toCity, forKey: .toCity)
            
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
        }
        
    }
}



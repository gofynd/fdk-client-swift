

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderConfig
        Used By: Order
    */

    class CreateOrderConfig: Codable {
        
        
        public var dpConfiguration: DPConfiguration
        
        public var integrationType: String?
        
        public var locationReassignment: Bool?
        
        public var payment: PaymentConfig?
        
        public var optimalShipmentCreation: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpConfiguration = "dp_configuration"
            
            case integrationType = "integration_type"
            
            case locationReassignment = "location_reassignment"
            
            case payment = "payment"
            
            case optimalShipmentCreation = "optimal_shipment_creation"
            
        }

        public init(dpConfiguration: DPConfiguration, integrationType: String? = nil, locationReassignment: Bool? = nil, optimalShipmentCreation: Bool? = nil, payment: PaymentConfig? = nil) {
            
            self.dpConfiguration = dpConfiguration
            
            self.integrationType = integrationType
            
            self.locationReassignment = locationReassignment
            
            self.payment = payment
            
            self.optimalShipmentCreation = optimalShipmentCreation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                dpConfiguration = try container.decode(DPConfiguration.self, forKey: .dpConfiguration)
                
            
            
            
                do {
                    integrationType = try container.decode(String.self, forKey: .integrationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationReassignment = try container.decode(Bool.self, forKey: .locationReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode(PaymentConfig.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    optimalShipmentCreation = try container.decode(Bool.self, forKey: .optimalShipmentCreation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
            
            
            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(optimalShipmentCreation, forKey: .optimalShipmentCreation)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateOrderConfig
        Used By: Order
    */

    class CreateOrderConfig: Codable {
        
        
        public var dpConfiguration: DPConfiguration
        
        public var integrationType: String?
        
        public var locationReassignment: Bool?
        
        public var payment: PaymentConfig?
        
        public var optimalShipmentCreation: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpConfiguration = "dp_configuration"
            
            case integrationType = "integration_type"
            
            case locationReassignment = "location_reassignment"
            
            case payment = "payment"
            
            case optimalShipmentCreation = "optimal_shipment_creation"
            
        }

        public init(dpConfiguration: DPConfiguration, integrationType: String? = nil, locationReassignment: Bool? = nil, optimalShipmentCreation: Bool? = nil, payment: PaymentConfig? = nil) {
            
            self.dpConfiguration = dpConfiguration
            
            self.integrationType = integrationType
            
            self.locationReassignment = locationReassignment
            
            self.payment = payment
            
            self.optimalShipmentCreation = optimalShipmentCreation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                dpConfiguration = try container.decode(DPConfiguration.self, forKey: .dpConfiguration)
                
            
            
            
                do {
                    integrationType = try container.decode(String.self, forKey: .integrationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationReassignment = try container.decode(Bool.self, forKey: .locationReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode(PaymentConfig.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    optimalShipmentCreation = try container.decode(Bool.self, forKey: .optimalShipmentCreation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
            
            
            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(optimalShipmentCreation, forKey: .optimalShipmentCreation)
            
            
        }
        
    }
}



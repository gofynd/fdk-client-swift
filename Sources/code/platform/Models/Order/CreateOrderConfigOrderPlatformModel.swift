

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderConfig
        Used By: Order
    */

    class CreateOrderConfig: Codable {
        
        
        public var dpConfiguration: DPConfiguration
        
        public var locationReassignment: Bool?
        
        public var payment: PaymentConfig?
        
        public var optimalShipmentCreation: Bool?
        
        public var lockStateMessages: [LockStateMessage]?
        
        public var integrationType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpConfiguration = "dp_configuration"
            
            case locationReassignment = "location_reassignment"
            
            case payment = "payment"
            
            case optimalShipmentCreation = "optimal_shipment_creation"
            
            case lockStateMessages = "lock_state_messages"
            
            case integrationType = "integration_type"
            
        }

        public init(dpConfiguration: DPConfiguration, integrationType: String? = nil, locationReassignment: Bool? = nil, lockStateMessages: [LockStateMessage]? = nil, optimalShipmentCreation: Bool? = nil, payment: PaymentConfig? = nil) {
            
            self.dpConfiguration = dpConfiguration
            
            self.locationReassignment = locationReassignment
            
            self.payment = payment
            
            self.optimalShipmentCreation = optimalShipmentCreation
            
            self.lockStateMessages = lockStateMessages
            
            self.integrationType = integrationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                dpConfiguration = try container.decode(DPConfiguration.self, forKey: .dpConfiguration)
                
            
            
            
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
                
            
            
                do {
                    lockStateMessages = try container.decode([LockStateMessage].self, forKey: .lockStateMessages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrationType = try container.decode(String.self, forKey: .integrationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(optimalShipmentCreation, forKey: .optimalShipmentCreation)
            
            
            
            
            try? container.encodeIfPresent(lockStateMessages, forKey: .lockStateMessages)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
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
        
        public var locationReassignment: Bool?
        
        public var payment: PaymentConfig?
        
        public var optimalShipmentCreation: Bool?
        
        public var lockStateMessages: [LockStateMessage]?
        
        public var integrationType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpConfiguration = "dp_configuration"
            
            case locationReassignment = "location_reassignment"
            
            case payment = "payment"
            
            case optimalShipmentCreation = "optimal_shipment_creation"
            
            case lockStateMessages = "lock_state_messages"
            
            case integrationType = "integration_type"
            
        }

        public init(dpConfiguration: DPConfiguration, integrationType: String? = nil, locationReassignment: Bool? = nil, lockStateMessages: [LockStateMessage]? = nil, optimalShipmentCreation: Bool? = nil, payment: PaymentConfig? = nil) {
            
            self.dpConfiguration = dpConfiguration
            
            self.locationReassignment = locationReassignment
            
            self.payment = payment
            
            self.optimalShipmentCreation = optimalShipmentCreation
            
            self.lockStateMessages = lockStateMessages
            
            self.integrationType = integrationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                dpConfiguration = try container.decode(DPConfiguration.self, forKey: .dpConfiguration)
                
            
            
            
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
                
            
            
                do {
                    lockStateMessages = try container.decode([LockStateMessage].self, forKey: .lockStateMessages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrationType = try container.decode(String.self, forKey: .integrationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(optimalShipmentCreation, forKey: .optimalShipmentCreation)
            
            
            
            
            try? container.encodeIfPresent(lockStateMessages, forKey: .lockStateMessages)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
        }
        
    }
}



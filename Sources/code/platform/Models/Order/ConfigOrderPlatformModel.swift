

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Config
        Used By: Order
    */

    class Config: Codable {
        
        
        public var lockStates: [String]?
        
        public var payment: ConfigPayment
        
        public var dpConfiguration: ConfigDpConfiguration?
        
        public var locationReassignment: Bool?
        
        public var application: ConfigApplication?
        
        public var orderingChannelLogo: String?
        
        public var integrationType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lockStates = "lock_states"
            
            case payment = "payment"
            
            case dpConfiguration = "dp_configuration"
            
            case locationReassignment = "location_reassignment"
            
            case application = "application"
            
            case orderingChannelLogo = "ordering_channel_logo"
            
            case integrationType = "integration_type"
            
        }

        public init(application: ConfigApplication? = nil, dpConfiguration: ConfigDpConfiguration? = nil, integrationType: String? = nil, locationReassignment: Bool? = nil, lockStates: [String]? = nil, orderingChannelLogo: String? = nil, payment: ConfigPayment) {
            
            self.lockStates = lockStates
            
            self.payment = payment
            
            self.dpConfiguration = dpConfiguration
            
            self.locationReassignment = locationReassignment
            
            self.application = application
            
            self.orderingChannelLogo = orderingChannelLogo
            
            self.integrationType = integrationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lockStates = try container.decode([String].self, forKey: .lockStates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                payment = try container.decode(ConfigPayment.self, forKey: .payment)
                
            
            
            
                do {
                    dpConfiguration = try container.decode(ConfigDpConfiguration.self, forKey: .dpConfiguration)
                
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
                    application = try container.decode(ConfigApplication.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)
                
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
            
            
            
            try? container.encodeIfPresent(lockStates, forKey: .lockStates)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Config
        Used By: Order
    */

    class Config: Codable {
        
        
        public var lockStates: [String]?
        
        public var payment: ConfigPayment
        
        public var dpConfiguration: ConfigDpConfiguration?
        
        public var locationReassignment: Bool?
        
        public var application: ConfigApplication?
        
        public var orderingChannelLogo: String?
        
        public var integrationType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lockStates = "lock_states"
            
            case payment = "payment"
            
            case dpConfiguration = "dp_configuration"
            
            case locationReassignment = "location_reassignment"
            
            case application = "application"
            
            case orderingChannelLogo = "ordering_channel_logo"
            
            case integrationType = "integration_type"
            
        }

        public init(application: ConfigApplication? = nil, dpConfiguration: ConfigDpConfiguration? = nil, integrationType: String? = nil, locationReassignment: Bool? = nil, lockStates: [String]? = nil, orderingChannelLogo: String? = nil, payment: ConfigPayment) {
            
            self.lockStates = lockStates
            
            self.payment = payment
            
            self.dpConfiguration = dpConfiguration
            
            self.locationReassignment = locationReassignment
            
            self.application = application
            
            self.orderingChannelLogo = orderingChannelLogo
            
            self.integrationType = integrationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lockStates = try container.decode([String].self, forKey: .lockStates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                payment = try container.decode(ConfigPayment.self, forKey: .payment)
                
            
            
            
                do {
                    dpConfiguration = try container.decode(ConfigDpConfiguration.self, forKey: .dpConfiguration)
                
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
                    application = try container.decode(ConfigApplication.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)
                
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
            
            
            
            try? container.encodeIfPresent(lockStates, forKey: .lockStates)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
        }
        
    }
}



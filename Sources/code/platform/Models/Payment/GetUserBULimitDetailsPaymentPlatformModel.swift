

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: GetUserBULimitDetails
        Used By: Payment
    */

    class GetUserBULimitDetails: Codable {
        
        
        public var buisnessUnit: String?
        
        public var displayName: String?
        
        public var config: UserPaymentLimitConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case buisnessUnit = "buisness_unit"
            
            case displayName = "display_name"
            
            case config = "config"
            
        }

        public init(buisnessUnit: String? = nil, config: UserPaymentLimitConfig? = nil, displayName: String? = nil) {
            
            self.buisnessUnit = buisnessUnit
            
            self.displayName = displayName
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    buisnessUnit = try container.decode(String.self, forKey: .buisnessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(UserPaymentLimitConfig.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(buisnessUnit, forKey: .buisnessUnit)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: GetUserBULimitDetails
        Used By: Payment
    */

    class GetUserBULimitDetails: Codable {
        
        
        public var buisnessUnit: String?
        
        public var displayName: String?
        
        public var config: UserPaymentLimitConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case buisnessUnit = "buisness_unit"
            
            case displayName = "display_name"
            
            case config = "config"
            
        }

        public init(buisnessUnit: String? = nil, config: UserPaymentLimitConfig? = nil, displayName: String? = nil) {
            
            self.buisnessUnit = buisnessUnit
            
            self.displayName = displayName
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    buisnessUnit = try container.decode(String.self, forKey: .buisnessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(UserPaymentLimitConfig.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(buisnessUnit, forKey: .buisnessUnit)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}



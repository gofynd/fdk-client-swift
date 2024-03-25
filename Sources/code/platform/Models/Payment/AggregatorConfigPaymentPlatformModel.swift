

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorConfig
        Used By: Payment
    */

    class AggregatorConfig: Codable {
        
        
        public var isActive: Bool?
        
        public var configType: String?
        
        public var display: DisplayDetails?
        
        public var aggregator: String?
        
        public var logo: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case configType = "config_type"
            
            case display = "display"
            
            case aggregator = "aggregator"
            
            case logo = "logo"
            
            case displayName = "display_name"
            
        }

        public init(aggregator: String? = nil, configType: String? = nil, display: DisplayDetails? = nil, displayName: String? = nil, isActive: Bool? = nil, logo: String? = nil) {
            
            self.isActive = isActive
            
            self.configType = configType
            
            self.display = display
            
            self.aggregator = aggregator
            
            self.logo = logo
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configType = try container.decode(String.self, forKey: .configType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(DisplayDetails.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorConfig
        Used By: Payment
    */

    class AggregatorConfig: Codable {
        
        
        public var isActive: Bool?
        
        public var configType: String?
        
        public var display: DisplayDetails?
        
        public var aggregator: String?
        
        public var logo: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case configType = "config_type"
            
            case display = "display"
            
            case aggregator = "aggregator"
            
            case logo = "logo"
            
            case displayName = "display_name"
            
        }

        public init(aggregator: String? = nil, configType: String? = nil, display: DisplayDetails? = nil, displayName: String? = nil, isActive: Bool? = nil, logo: String? = nil) {
            
            self.isActive = isActive
            
            self.configType = configType
            
            self.display = display
            
            self.aggregator = aggregator
            
            self.logo = logo
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configType = try container.decode(String.self, forKey: .configType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(DisplayDetails.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



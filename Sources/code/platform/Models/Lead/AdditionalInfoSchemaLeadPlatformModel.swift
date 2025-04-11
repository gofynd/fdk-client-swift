

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: AdditionalInfoSchema
        Used By: Lead
    */

    class AdditionalInfoSchema: Codable {
        
        
        public var displayName: String?
        
        public var displayValue: String?
        
        public var priority: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case displayValue = "display_value"
            
            case priority = "priority"
            
        }

        public init(displayName: String? = nil, displayValue: String? = nil, priority: Double? = nil) {
            
            self.displayName = displayName
            
            self.displayValue = displayValue
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayValue = try container.decode(String.self, forKey: .displayValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Double.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(displayValue, forKey: .displayValue)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: AdditionalInfoSchema
        Used By: Lead
    */

    class AdditionalInfoSchema: Codable {
        
        
        public var displayName: String?
        
        public var displayValue: String?
        
        public var priority: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case displayValue = "display_value"
            
            case priority = "priority"
            
        }

        public init(displayName: String? = nil, displayValue: String? = nil, priority: Double? = nil) {
            
            self.displayName = displayName
            
            self.displayValue = displayValue
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayValue = try container.decode(String.self, forKey: .displayValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Double.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(displayValue, forKey: .displayValue)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}



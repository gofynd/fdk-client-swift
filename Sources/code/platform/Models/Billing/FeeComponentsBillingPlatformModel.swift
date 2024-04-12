

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: FeeComponents
        Used By: Billing
    */

    class FeeComponents: Codable {
        
        
        public var brand: [String]?
        
        public var location: [String]?
        
        public var channel: [[String: Any]]?
        
        public var businessLead: String?
        
        public var settlementType: String?
        
        public var settleCyclePeriod: [String: Any]?
        
        public var components: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case location = "location"
            
            case channel = "channel"
            
            case businessLead = "business_lead"
            
            case settlementType = "settlement_type"
            
            case settleCyclePeriod = "settle_cycle_period"
            
            case components = "components"
            
        }

        public init(brand: [String]? = nil, businessLead: String? = nil, channel: [[String: Any]]? = nil, components: [[String: Any]]? = nil, location: [String]? = nil, settlementType: String? = nil, settleCyclePeriod: [String: Any]? = nil) {
            
            self.brand = brand
            
            self.location = location
            
            self.channel = channel
            
            self.businessLead = businessLead
            
            self.settlementType = settlementType
            
            self.settleCyclePeriod = settleCyclePeriod
            
            self.components = components
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode([String].self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    location = try container.decode([String].self, forKey: .location)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode([[String: Any]].self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessLead = try container.decode(String.self, forKey: .businessLead)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    settlementType = try container.decode(String.self, forKey: .settlementType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    settleCyclePeriod = try container.decode([String: Any].self, forKey: .settleCyclePeriod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    components = try container.decode([[String: Any]].self, forKey: .components)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(location, forKey: .location)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(businessLead, forKey: .businessLead)
            
            
            
            
            try? container.encodeIfPresent(settlementType, forKey: .settlementType)
            
            
            
            
            try? container.encodeIfPresent(settleCyclePeriod, forKey: .settleCyclePeriod)
            
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
        }
        
    }
}





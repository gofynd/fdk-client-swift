

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationConfig
        Used By: Serviceability
    */

    class ApplicationConfig: Codable {
        
        
        public var ruleIds: [String]?
        
        public var sort: [String]?
        
        public var zones: ZoneConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case sort = "sort"
            
            case zones = "zones"
            
        }

        public init(ruleIds: [String]? = nil, sort: [String]? = nil, zones: ZoneConfig? = nil) {
            
            self.ruleIds = ruleIds
            
            self.sort = sort
            
            self.zones = zones
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zones = try container.decode(ZoneConfig.self, forKey: .zones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationConfig
        Used By: Serviceability
    */

    class ApplicationConfig: Codable {
        
        
        public var ruleIds: [String]?
        
        public var sort: [String]?
        
        public var zones: ZoneConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case sort = "sort"
            
            case zones = "zones"
            
        }

        public init(ruleIds: [String]? = nil, sort: [String]? = nil, zones: ZoneConfig? = nil) {
            
            self.ruleIds = ruleIds
            
            self.sort = sort
            
            self.zones = zones
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zones = try container.decode(ZoneConfig.self, forKey: .zones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}



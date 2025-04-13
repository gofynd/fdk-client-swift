

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneOverrideResponseSchema
        Used By: Serviceability
    */

    class ZoneOverrideResponseSchema: Codable {
        
        
        public var zoneId: String?
        
        public var allowOverride: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case allowOverride = "allow_override"
            
        }

        public init(allowOverride: Bool? = nil, zoneId: String? = nil) {
            
            self.zoneId = zoneId
            
            self.allowOverride = allowOverride
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowOverride = try container.decode(Bool.self, forKey: .allowOverride)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(allowOverride, forKey: .allowOverride)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneOverrideResponseSchema
        Used By: Serviceability
    */

    class ZoneOverrideResponseSchema: Codable {
        
        
        public var zoneId: String?
        
        public var allowOverride: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case allowOverride = "allow_override"
            
        }

        public init(allowOverride: Bool? = nil, zoneId: String? = nil) {
            
            self.zoneId = zoneId
            
            self.allowOverride = allowOverride
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowOverride = try container.decode(Bool.self, forKey: .allowOverride)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(allowOverride, forKey: .allowOverride)
            
            
        }
        
    }
}



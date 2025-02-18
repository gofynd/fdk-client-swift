

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CreateBulkZoneResult
        Used By: Serviceability
    */

    class CreateBulkZoneResult: Codable {
        
        
        public var zoneId: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
        }

        public init(zoneId: [String: Any]? = nil) {
            
            self.zoneId = zoneId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zoneId = try container.decode([String: Any].self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CreateBulkZoneResult
        Used By: Serviceability
    */

    class CreateBulkZoneResult: Codable {
        
        
        public var zoneId: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
        }

        public init(zoneId: [String: Any]? = nil) {
            
            self.zoneId = zoneId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zoneId = try container.decode([String: Any].self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}



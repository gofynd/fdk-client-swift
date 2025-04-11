

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CreateBulkZoneResponseSchema
        Used By: Serviceability
    */

    class CreateBulkZoneResponseSchema: Codable {
        
        
        public var zoneId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
        }

        public init(zoneId: String? = nil) {
            
            self.zoneId = zoneId
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CreateBulkZoneResponseSchema
        Used By: Serviceability
    */

    class CreateBulkZoneResponseSchema: Codable {
        
        
        public var zoneId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
        }

        public init(zoneId: String? = nil) {
            
            self.zoneId = zoneId
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}



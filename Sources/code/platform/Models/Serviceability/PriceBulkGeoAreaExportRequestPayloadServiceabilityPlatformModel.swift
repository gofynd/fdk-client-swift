

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PriceBulkGeoAreaExportRequestPayload
        Used By: Serviceability
    */

    class PriceBulkGeoAreaExportRequestPayload: Codable {
        
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
        }

        public init(type: String? = nil) {
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PriceBulkGeoAreaExportRequestPayload
        Used By: Serviceability
    */

    class PriceBulkGeoAreaExportRequestPayload: Codable {
        
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
        }

        public init(type: String? = nil) {
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



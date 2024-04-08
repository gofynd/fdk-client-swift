

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkGeoAreaResponse
        Used By: Serviceability
    */

    class BulkGeoAreaResponse: Codable {
        
        
        public var geoareaId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case geoareaId = "geoarea_id"
            
        }

        public init(geoareaId: String? = nil) {
            
            self.geoareaId = geoareaId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkGeoAreaResponse
        Used By: Serviceability
    */

    class BulkGeoAreaResponse: Codable {
        
        
        public var geoareaId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case geoareaId = "geoarea_id"
            
        }

        public init(geoareaId: String? = nil) {
            
            self.geoareaId = geoareaId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
        }
        
    }
}



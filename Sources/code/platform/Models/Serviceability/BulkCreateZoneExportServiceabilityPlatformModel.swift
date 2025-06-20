

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkCreateZoneExport
        Used By: Serviceability
    */

    class BulkCreateZoneExport: Codable {
        
        
        public var placeholder: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case placeholder = "placeholder"
            
        }

        public init(placeholder: [String: Any]? = nil) {
            
            self.placeholder = placeholder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    placeholder = try container.decode([String: Any].self, forKey: .placeholder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(placeholder, forKey: .placeholder)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkCreateZoneExport
        Used By: Serviceability
    */

    class BulkCreateZoneExport: Codable {
        
        
        public var placeholder: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case placeholder = "placeholder"
            
        }

        public init(placeholder: [String: Any]? = nil) {
            
            self.placeholder = placeholder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    placeholder = try container.decode([String: Any].self, forKey: .placeholder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(placeholder, forKey: .placeholder)
            
            
        }
        
    }
}



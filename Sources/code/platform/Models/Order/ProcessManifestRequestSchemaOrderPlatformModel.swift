

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ProcessManifestRequestSchema
        Used By: Order
    */

    class ProcessManifestRequestSchema: Codable {
        
        
        public var action: String
        
        public var manifestId: String?
        
        public var filters: Filters
        
        public var uniqueId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case manifestId = "manifest_id"
            
            case filters = "filters"
            
            case uniqueId = "unique_id"
            
        }

        public init(action: String, filters: Filters, manifestId: String? = nil, uniqueId: String) {
            
            self.action = action
            
            self.manifestId = manifestId
            
            self.filters = filters
            
            self.uniqueId = uniqueId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                do {
                    manifestId = try container.decode(String.self, forKey: .manifestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filters = try container.decode(Filters.self, forKey: .filters)
                
            
            
            
                uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ProcessManifestRequestSchema
        Used By: Order
    */

    class ProcessManifestRequestSchema: Codable {
        
        
        public var action: String
        
        public var manifestId: String?
        
        public var filters: Filters
        
        public var uniqueId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case manifestId = "manifest_id"
            
            case filters = "filters"
            
            case uniqueId = "unique_id"
            
        }

        public init(action: String, filters: Filters, manifestId: String? = nil, uniqueId: String) {
            
            self.action = action
            
            self.manifestId = manifestId
            
            self.filters = filters
            
            self.uniqueId = uniqueId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                do {
                    manifestId = try container.decode(String.self, forKey: .manifestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filters = try container.decode(Filters.self, forKey: .filters)
                
            
            
            
                uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
        }
        
    }
}



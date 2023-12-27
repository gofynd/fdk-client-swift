

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourcesSchema
        Used By: Content
    */

    class ResourcesSchema: Codable {
        
        
        public var resources: [ResourceSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case resources = "resources"
            
        }

        public init(resources: [ResourceSchema]? = nil) {
            
            self.resources = resources
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    resources = try container.decode([ResourceSchema].self, forKey: .resources)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(resources, forKey: .resources)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourcesSchema
        Used By: Content
    */

    class ResourcesSchema: Codable {
        
        
        public var resources: [ResourceSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case resources = "resources"
            
        }

        public init(resources: [ResourceSchema]? = nil) {
            
            self.resources = resources
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    resources = try container.decode([ResourceSchema].self, forKey: .resources)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(resources, forKey: .resources)
            
            
        }
        
    }
}



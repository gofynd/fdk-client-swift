

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourceBulkDetails
        Used By: Content
    */

    class ResourceBulkDetails: Codable {
        
        
        public var fields: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fields = "fields"
            
        }

        public init(fields: [String]? = nil) {
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fields = try container.decode([String].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourceBulkDetails
        Used By: Content
    */

    class ResourceBulkDetails: Codable {
        
        
        public var fields: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fields = "fields"
            
        }

        public init(fields: [String]? = nil) {
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fields = try container.decode([String].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}



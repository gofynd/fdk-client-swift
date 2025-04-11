

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomFieldRequestSchema
        Used By: Content
    */

    class CustomFieldRequestSchema: Codable {
        
        
        public var fields: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fields = "fields"
            
        }

        public init(fields: [[String: Any]]? = nil) {
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fields = try container.decode([[String: Any]].self, forKey: .fields)
                
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
        Model: CustomFieldRequestSchema
        Used By: Content
    */

    class CustomFieldRequestSchema: Codable {
        
        
        public var fields: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fields = "fields"
            
        }

        public init(fields: [[String: Any]]? = nil) {
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fields = try container.decode([[String: Any]].self, forKey: .fields)
                
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



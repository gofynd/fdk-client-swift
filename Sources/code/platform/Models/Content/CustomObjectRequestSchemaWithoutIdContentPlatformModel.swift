

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectRequestSchemaWithoutId
        Used By: Content
    */

    class CustomObjectRequestSchemaWithoutId: Codable {
        
        
        public var status: String?
        
        public var fields: [CustomObjectEntryFieldSchemaWithoutID]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case fields = "fields"
            
        }

        public init(fields: [CustomObjectEntryFieldSchemaWithoutID]? = nil, status: String? = nil) {
            
            self.status = status
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomObjectEntryFieldSchemaWithoutID].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectRequestSchemaWithoutId
        Used By: Content
    */

    class CustomObjectRequestSchemaWithoutId: Codable {
        
        
        public var status: String?
        
        public var fields: [CustomObjectEntryFieldSchemaWithoutID]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case fields = "fields"
            
        }

        public init(fields: [CustomObjectEntryFieldSchemaWithoutID]? = nil, status: String? = nil) {
            
            self.status = status
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomObjectEntryFieldSchemaWithoutID].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}



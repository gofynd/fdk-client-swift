

import Foundation


public extension PlatformClient.Content {
    /*
        Model: MetafieldTypesSchema
        Used By: Content
    */

    class MetafieldTypesSchema: Codable {
        
        
        public var metafieldTypes: CustomFieldTypeSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case metafieldTypes = "metafield_types"
            
        }

        public init(metafieldTypes: CustomFieldTypeSchema? = nil) {
            
            self.metafieldTypes = metafieldTypes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    metafieldTypes = try container.decode(CustomFieldTypeSchema.self, forKey: .metafieldTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(metafieldTypes, forKey: .metafieldTypes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: MetafieldTypesSchema
        Used By: Content
    */

    class MetafieldTypesSchema: Codable {
        
        
        public var metafieldTypes: CustomFieldTypeSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case metafieldTypes = "metafield_types"
            
        }

        public init(metafieldTypes: CustomFieldTypeSchema? = nil) {
            
            self.metafieldTypes = metafieldTypes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    metafieldTypes = try container.decode(CustomFieldTypeSchema.self, forKey: .metafieldTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(metafieldTypes, forKey: .metafieldTypes)
            
            
        }
        
    }
}



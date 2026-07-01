

import Foundation


public extension PlatformClient.Content {
    /*
        Model: SupportedValidationsMetaSchema
        Used By: Content
    */

    class SupportedValidationsMetaSchema: Codable {
        
        
        public var examples: [SupportedValidationsMetaExampleSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case examples = "examples"
            
        }

        public init(examples: [SupportedValidationsMetaExampleSchema]? = nil) {
            
            self.examples = examples
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    examples = try container.decode([SupportedValidationsMetaExampleSchema].self, forKey: .examples)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(examples, forKey: .examples)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: SupportedValidationsMetaSchema
        Used By: Content
    */

    class SupportedValidationsMetaSchema: Codable {
        
        
        public var examples: [SupportedValidationsMetaExampleSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case examples = "examples"
            
        }

        public init(examples: [SupportedValidationsMetaExampleSchema]? = nil) {
            
            self.examples = examples
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    examples = try container.decode([SupportedValidationsMetaExampleSchema].self, forKey: .examples)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(examples, forKey: .examples)
            
            
        }
        
    }
}



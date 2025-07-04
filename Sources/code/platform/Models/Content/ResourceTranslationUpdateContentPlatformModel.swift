

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourceTranslationUpdate
        Used By: Content
    */

    class ResourceTranslationUpdate: Codable {
        
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
        }

        public init(value: [String: Any]? = nil) {
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode([String: Any].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourceTranslationUpdate
        Used By: Content
    */

    class ResourceTranslationUpdate: Codable {
        
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
        }

        public init(value: [String: Any]? = nil) {
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode([String: Any].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



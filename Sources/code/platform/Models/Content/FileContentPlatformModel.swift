

import Foundation


public extension PlatformClient.Content {
    /*
        Model: File
        Used By: Content
    */

    class File: Codable {
        
        
        public var name: String?
        
        public var category: String?
        
        public var listEnabled: Bool?
        
        public var type: String?
        
        public var supportedValidations: [SupportedValidationsSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case category = "category"
            
            case listEnabled = "list_enabled"
            
            case type = "type"
            
            case supportedValidations = "supported_validations"
            
        }

        public init(category: String? = nil, listEnabled: Bool? = nil, name: String? = nil, supportedValidations: [SupportedValidationsSchema]? = nil, type: String? = nil) {
            
            self.name = name
            
            self.category = category
            
            self.listEnabled = listEnabled
            
            self.type = type
            
            self.supportedValidations = supportedValidations
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listEnabled = try container.decode(Bool.self, forKey: .listEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportedValidations = try container.decode([SupportedValidationsSchema].self, forKey: .supportedValidations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(listEnabled, forKey: .listEnabled)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(supportedValidations, forKey: .supportedValidations)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: File
        Used By: Content
    */

    class File: Codable {
        
        
        public var name: String?
        
        public var category: String?
        
        public var listEnabled: Bool?
        
        public var type: String?
        
        public var supportedValidations: [SupportedValidationsSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case category = "category"
            
            case listEnabled = "list_enabled"
            
            case type = "type"
            
            case supportedValidations = "supported_validations"
            
        }

        public init(category: String? = nil, listEnabled: Bool? = nil, name: String? = nil, supportedValidations: [SupportedValidationsSchema]? = nil, type: String? = nil) {
            
            self.name = name
            
            self.category = category
            
            self.listEnabled = listEnabled
            
            self.type = type
            
            self.supportedValidations = supportedValidations
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listEnabled = try container.decode(Bool.self, forKey: .listEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    supportedValidations = try container.decode([SupportedValidationsSchema].self, forKey: .supportedValidations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(listEnabled, forKey: .listEnabled)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(supportedValidations, forKey: .supportedValidations)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AttributeMaster
        Used By: Catalog
    */

    class AttributeMaster: Codable {
        
        
        public var allowedValues: [String]?
        
        public var format: String?
        
        public var mandatory: Bool?
        
        public var multi: Bool?
        
        public var range: AttributeSchemaRange?
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case allowedValues = "allowed_values"
            
            case format = "format"
            
            case mandatory = "mandatory"
            
            case multi = "multi"
            
            case range = "range"
            
            case type = "type"
            
        }

        public init(allowedValues: [String]? = nil, format: String? = nil, mandatory: Bool? = nil, multi: Bool? = nil, range: AttributeSchemaRange? = nil, type: String) {
            
            self.allowedValues = allowedValues
            
            self.format = format
            
            self.mandatory = mandatory
            
            self.multi = multi
            
            self.range = range
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowedValues = try container.decode([String].self, forKey: .allowedValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    format = try container.decode(String.self, forKey: .format)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mandatory = try container.decode(Bool.self, forKey: .mandatory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multi = try container.decode(Bool.self, forKey: .multi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    range = try container.decode(AttributeSchemaRange.self, forKey: .range)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowedValues, forKey: .allowedValues)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(mandatory, forKey: .mandatory)
            
            
            
            
            try? container.encodeIfPresent(multi, forKey: .multi)
            
            
            
            
            try? container.encodeIfPresent(range, forKey: .range)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AttributeMaster
        Used By: Catalog
    */

    class AttributeMaster: Codable {
        
        
        public var allowedValues: [String]?
        
        public var format: String?
        
        public var mandatory: Bool?
        
        public var multi: Bool?
        
        public var range: AttributeSchemaRange?
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case allowedValues = "allowed_values"
            
            case format = "format"
            
            case mandatory = "mandatory"
            
            case multi = "multi"
            
            case range = "range"
            
            case type = "type"
            
        }

        public init(allowedValues: [String]? = nil, format: String? = nil, mandatory: Bool? = nil, multi: Bool? = nil, range: AttributeSchemaRange? = nil, type: String) {
            
            self.allowedValues = allowedValues
            
            self.format = format
            
            self.mandatory = mandatory
            
            self.multi = multi
            
            self.range = range
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowedValues = try container.decode([String].self, forKey: .allowedValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    format = try container.decode(String.self, forKey: .format)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mandatory = try container.decode(Bool.self, forKey: .mandatory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multi = try container.decode(Bool.self, forKey: .multi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    range = try container.decode(AttributeSchemaRange.self, forKey: .range)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowedValues, forKey: .allowedValues)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(mandatory, forKey: .mandatory)
            
            
            
            
            try? container.encodeIfPresent(multi, forKey: .multi)
            
            
            
            
            try? container.encodeIfPresent(range, forKey: .range)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



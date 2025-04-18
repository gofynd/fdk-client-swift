

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FiltersList
        Used By: Order
    */

    class FiltersList: Codable {
        
        
        public var label: String
        
        public var value: String
        
        public var filterType: String?
        
        public var type: String?
        
        public var placeholderText: String?
        
        public var required: Bool?
        
        public var isActive: Bool?
        
        public var options: [FilterOptions]?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case value = "value"
            
            case filterType = "filter_type"
            
            case type = "type"
            
            case placeholderText = "placeholder_text"
            
            case required = "required"
            
            case isActive = "is_active"
            
            case options = "options"
            
        }

        public init(filterType: String? = nil, isActive: Bool? = nil, label: String, options: [FilterOptions]? = nil, placeholderText: String? = nil, required: Bool? = nil, type: String? = nil, value: String) {
            
            self.label = label
            
            self.value = value
            
            self.filterType = filterType
            
            self.type = type
            
            self.placeholderText = placeholderText
            
            self.required = required
            
            self.isActive = isActive
            
            self.options = options
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    filterType = try container.decode(String.self, forKey: .filterType)
                
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
                    placeholderText = try container.decode(String.self, forKey: .placeholderText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    required = try container.decode(Bool.self, forKey: .required)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    options = try container.decode([FilterOptions].self, forKey: .options)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(filterType, forKey: .filterType)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)
            
            
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(options, forKey: .options)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FiltersList
        Used By: Order
    */

    class FiltersList: Codable {
        
        
        public var label: String
        
        public var value: String
        
        public var filterType: String?
        
        public var type: String?
        
        public var placeholderText: String?
        
        public var required: Bool?
        
        public var isActive: Bool?
        
        public var options: [FilterOptions]?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case value = "value"
            
            case filterType = "filter_type"
            
            case type = "type"
            
            case placeholderText = "placeholder_text"
            
            case required = "required"
            
            case isActive = "is_active"
            
            case options = "options"
            
        }

        public init(filterType: String? = nil, isActive: Bool? = nil, label: String, options: [FilterOptions]? = nil, placeholderText: String? = nil, required: Bool? = nil, type: String? = nil, value: String) {
            
            self.label = label
            
            self.value = value
            
            self.filterType = filterType
            
            self.type = type
            
            self.placeholderText = placeholderText
            
            self.required = required
            
            self.isActive = isActive
            
            self.options = options
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    filterType = try container.decode(String.self, forKey: .filterType)
                
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
                    placeholderText = try container.decode(String.self, forKey: .placeholderText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    required = try container.decode(Bool.self, forKey: .required)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    options = try container.decode([FilterOptions].self, forKey: .options)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(filterType, forKey: .filterType)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)
            
            
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(options, forKey: .options)
            
            
        }
        
    }
}



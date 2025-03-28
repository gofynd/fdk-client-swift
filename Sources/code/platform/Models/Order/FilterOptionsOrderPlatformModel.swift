

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FilterOptions
        Used By: Order
    */

    class FilterOptions: Codable {
        
        
        public var label: String
        
        public var value: String
        
        public var stateType: String?
        
        public var name: String?
        
        public var text: String?
        
        public var minSearchSize: Int?
        
        public var placeholderText: String?
        
        public var showUi: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case value = "value"
            
            case stateType = "state_type"
            
            case name = "name"
            
            case text = "text"
            
            case minSearchSize = "min_search_size"
            
            case placeholderText = "placeholder_text"
            
            case showUi = "show_ui"
            
        }

        public init(label: String, minSearchSize: Int? = nil, name: String? = nil, placeholderText: String? = nil, showUi: Bool? = nil, stateType: String? = nil, text: String? = nil, value: String) {
            
            self.label = label
            
            self.value = value
            
            self.stateType = stateType
            
            self.name = name
            
            self.text = text
            
            self.minSearchSize = minSearchSize
            
            self.placeholderText = placeholderText
            
            self.showUi = showUi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    stateType = try container.decode(String.self, forKey: .stateType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minSearchSize = try container.decode(Int.self, forKey: .minSearchSize)
                
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
                    showUi = try container.decode(Bool.self, forKey: .showUi)
                
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
            
            
            
            
            try? container.encodeIfPresent(stateType, forKey: .stateType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(minSearchSize, forKey: .minSearchSize)
            
            
            
            
            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)
            
            
            
            
            try? container.encodeIfPresent(showUi, forKey: .showUi)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FilterOptions
        Used By: Order
    */

    class FilterOptions: Codable {
        
        
        public var label: String
        
        public var value: String
        
        public var stateType: String?
        
        public var name: String?
        
        public var text: String?
        
        public var minSearchSize: Int?
        
        public var placeholderText: String?
        
        public var showUi: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case value = "value"
            
            case stateType = "state_type"
            
            case name = "name"
            
            case text = "text"
            
            case minSearchSize = "min_search_size"
            
            case placeholderText = "placeholder_text"
            
            case showUi = "show_ui"
            
        }

        public init(label: String, minSearchSize: Int? = nil, name: String? = nil, placeholderText: String? = nil, showUi: Bool? = nil, stateType: String? = nil, text: String? = nil, value: String) {
            
            self.label = label
            
            self.value = value
            
            self.stateType = stateType
            
            self.name = name
            
            self.text = text
            
            self.minSearchSize = minSearchSize
            
            self.placeholderText = placeholderText
            
            self.showUi = showUi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    stateType = try container.decode(String.self, forKey: .stateType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minSearchSize = try container.decode(Int.self, forKey: .minSearchSize)
                
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
                    showUi = try container.decode(Bool.self, forKey: .showUi)
                
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
            
            
            
            
            try? container.encodeIfPresent(stateType, forKey: .stateType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(minSearchSize, forKey: .minSearchSize)
            
            
            
            
            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)
            
            
            
            
            try? container.encodeIfPresent(showUi, forKey: .showUi)
            
            
        }
        
    }
}



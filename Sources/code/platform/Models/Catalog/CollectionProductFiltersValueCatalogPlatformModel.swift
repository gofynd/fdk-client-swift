

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionProductFiltersValue
        Used By: Catalog
    */

    class CollectionProductFiltersValue: Codable {
        
        
        public var display: String
        
        public var count: Int?
        
        public var isSelected: Bool
        
        public var value: String
        
        public var logo: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case count = "count"
            
            case isSelected = "is_selected"
            
            case value = "value"
            
            case logo = "logo"
            
        }

        public init(count: Int? = nil, display: String, isSelected: Bool, logo: [String: Any]? = nil, value: String) {
            
            self.display = display
            
            self.count = count
            
            self.isSelected = isSelected
            
            self.value = value
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    logo = try container.decode([String: Any].self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionProductFiltersValue
        Used By: Catalog
    */

    class CollectionProductFiltersValue: Codable {
        
        
        public var display: String
        
        public var count: Int?
        
        public var isSelected: Bool
        
        public var value: String
        
        public var logo: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case count = "count"
            
            case isSelected = "is_selected"
            
            case value = "value"
            
            case logo = "logo"
            
        }

        public init(count: Int? = nil, display: String, isSelected: Bool, logo: [String: Any]? = nil, value: String) {
            
            self.display = display
            
            self.count = count
            
            self.isSelected = isSelected
            
            self.value = value
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    logo = try container.decode([String: Any].self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}





import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSortOn
        Used By: Catalog
    */
    class ProductSortOn: Codable {
        
        public var logo: String?
        
        public var isSelected: Bool?
        
        public var name: String?
        
        public var value: String?
        
        public var display: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case isSelected = "is_selected"
            
            case name = "name"
            
            case value = "value"
            
            case display = "display"
            
        }

        public init(display: String? = nil, isSelected: Bool? = nil, logo: String? = nil, name: String? = nil, value: String? = nil) {
            
            self.logo = logo
            
            self.isSelected = isSelected
            
            self.name = name
            
            self.value = value
            
            self.display = display
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                logo = try container.decode(String.self, forKey: .logo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
            
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
                value = try container.decode(String.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                display = try container.decode(String.self, forKey: .display)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
        }
        
    }
}

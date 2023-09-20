

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Attributes
        Used By: Order
    */

    class Attributes: Codable {
        
        
        public var primaryMaterial: String?
        
        public var essential: String?
        
        public var marketerName: String?
        
        public var primaryColor: String?
        
        public var marketerAddress: String?
        
        public var primaryColorHex: String?
        
        public var brandName: String?
        
        public var name: String?
        
        public var gender: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case primaryMaterial = "primary_material"
            
            case essential = "essential"
            
            case marketerName = "marketer_name"
            
            case primaryColor = "primary_color"
            
            case marketerAddress = "marketer_address"
            
            case primaryColorHex = "primary_color_hex"
            
            case brandName = "brand_name"
            
            case name = "name"
            
            case gender = "gender"
            
        }

        public init(brandName: String? = nil, essential: String? = nil, gender: [String]? = nil, marketerAddress: String? = nil, marketerName: String? = nil, name: String? = nil, primaryColor: String? = nil, primaryColorHex: String? = nil, primaryMaterial: String? = nil) {
            
            self.primaryMaterial = primaryMaterial
            
            self.essential = essential
            
            self.marketerName = marketerName
            
            self.primaryColor = primaryColor
            
            self.marketerAddress = marketerAddress
            
            self.primaryColorHex = primaryColorHex
            
            self.brandName = brandName
            
            self.name = name
            
            self.gender = gender
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    primaryMaterial = try container.decode(String.self, forKey: .primaryMaterial)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    essential = try container.decode(String.self, forKey: .essential)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketerName = try container.decode(String.self, forKey: .marketerName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryColor = try container.decode(String.self, forKey: .primaryColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketerAddress = try container.decode(String.self, forKey: .marketerAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryColorHex = try container.decode(String.self, forKey: .primaryColorHex)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
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
                    gender = try container.decode([String].self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(primaryMaterial, forKey: .primaryMaterial)
            
            
            
            
            try? container.encode(essential, forKey: .essential)
            
            
            
            
            try? container.encode(marketerName, forKey: .marketerName)
            
            
            
            
            try? container.encode(primaryColor, forKey: .primaryColor)
            
            
            
            
            try? container.encode(marketerAddress, forKey: .marketerAddress)
            
            
            
            
            try? container.encode(primaryColorHex, forKey: .primaryColorHex)
            
            
            
            
            try? container.encode(brandName, forKey: .brandName)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(gender, forKey: .gender)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Attributes
        Used By: Order
    */

    class Attributes: Codable {
        
        
        public var primaryMaterial: String?
        
        public var essential: String?
        
        public var marketerName: String?
        
        public var primaryColor: String?
        
        public var marketerAddress: String?
        
        public var primaryColorHex: String?
        
        public var brandName: String?
        
        public var name: String?
        
        public var gender: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case primaryMaterial = "primary_material"
            
            case essential = "essential"
            
            case marketerName = "marketer_name"
            
            case primaryColor = "primary_color"
            
            case marketerAddress = "marketer_address"
            
            case primaryColorHex = "primary_color_hex"
            
            case brandName = "brand_name"
            
            case name = "name"
            
            case gender = "gender"
            
        }

        public init(brandName: String? = nil, essential: String? = nil, gender: [String]? = nil, marketerAddress: String? = nil, marketerName: String? = nil, name: String? = nil, primaryColor: String? = nil, primaryColorHex: String? = nil, primaryMaterial: String? = nil) {
            
            self.primaryMaterial = primaryMaterial
            
            self.essential = essential
            
            self.marketerName = marketerName
            
            self.primaryColor = primaryColor
            
            self.marketerAddress = marketerAddress
            
            self.primaryColorHex = primaryColorHex
            
            self.brandName = brandName
            
            self.name = name
            
            self.gender = gender
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    primaryMaterial = try container.decode(String.self, forKey: .primaryMaterial)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    essential = try container.decode(String.self, forKey: .essential)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketerName = try container.decode(String.self, forKey: .marketerName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryColor = try container.decode(String.self, forKey: .primaryColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketerAddress = try container.decode(String.self, forKey: .marketerAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryColorHex = try container.decode(String.self, forKey: .primaryColorHex)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
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
                    gender = try container.decode([String].self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(primaryMaterial, forKey: .primaryMaterial)
            
            
            
            
            try? container.encode(essential, forKey: .essential)
            
            
            
            
            try? container.encode(marketerName, forKey: .marketerName)
            
            
            
            
            try? container.encode(primaryColor, forKey: .primaryColor)
            
            
            
            
            try? container.encode(marketerAddress, forKey: .marketerAddress)
            
            
            
            
            try? container.encode(primaryColorHex, forKey: .primaryColorHex)
            
            
            
            
            try? container.encode(brandName, forKey: .brandName)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(gender, forKey: .gender)
            
            
        }
        
    }
}



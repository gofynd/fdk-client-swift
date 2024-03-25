

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ProductAttributes
        Used By: Cart
    */

    class ProductAttributes: Codable {
        
        
        public var productType: String?
        
        public var itemCode: String?
        
        public var primaryColorHex: String?
        
        public var primaryMaterial: String?
        
        public var primaryColor: String?
        
        public var variant: String?
        
        public var color: String?
        
        public var season: String?
        
        public var styleNote: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case productType = "product_type"
            
            case itemCode = "item_code"
            
            case primaryColorHex = "primary_color_hex"
            
            case primaryMaterial = "primary_material"
            
            case primaryColor = "primary_color"
            
            case variant = "variant"
            
            case color = "color"
            
            case season = "season"
            
            case styleNote = "style_note"
            
        }

        public init(color: String? = nil, itemCode: String? = nil, primaryColor: String? = nil, primaryColorHex: String? = nil, primaryMaterial: String? = nil, productType: String? = nil, season: String? = nil, styleNote: String? = nil, variant: String? = nil) {
            
            self.productType = productType
            
            self.itemCode = itemCode
            
            self.primaryColorHex = primaryColorHex
            
            self.primaryMaterial = primaryMaterial
            
            self.primaryColor = primaryColor
            
            self.variant = variant
            
            self.color = color
            
            self.season = season
            
            self.styleNote = styleNote
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    productType = try container.decode(String.self, forKey: .productType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
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
                    primaryMaterial = try container.decode(String.self, forKey: .primaryMaterial)
                
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
                    variant = try container.decode(String.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    color = try container.decode(String.self, forKey: .color)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    season = try container.decode(String.self, forKey: .season)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    styleNote = try container.decode(String.self, forKey: .styleNote)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(primaryColorHex, forKey: .primaryColorHex)
            
            
            
            
            try? container.encodeIfPresent(primaryMaterial, forKey: .primaryMaterial)
            
            
            
            
            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
            
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            
            
            
            try? container.encodeIfPresent(season, forKey: .season)
            
            
            
            
            try? container.encodeIfPresent(styleNote, forKey: .styleNote)
            
            
        }
        
    }
}



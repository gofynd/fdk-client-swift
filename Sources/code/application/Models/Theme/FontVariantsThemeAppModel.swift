

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: FontVariants
        Used By: Theme
    */
    class FontVariants: Codable {
        
        public var light: FontVariant?
        
        public var regular: FontVariant?
        
        public var medium: FontVariant?
        
        public var semiBold: FontVariant?
        
        public var bold: FontVariant?
        

        public enum CodingKeys: String, CodingKey {
            
            case light = "light"
            
            case regular = "regular"
            
            case medium = "medium"
            
            case semiBold = "semi_bold"
            
            case bold = "bold"
            
        }

        public init(bold: FontVariant? = nil, light: FontVariant? = nil, medium: FontVariant? = nil, regular: FontVariant? = nil, semiBold: FontVariant? = nil) {
            
            self.light = light
            
            self.regular = regular
            
            self.medium = medium
            
            self.semiBold = semiBold
            
            self.bold = bold
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                light = try container.decode(FontVariant.self, forKey: .light)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                regular = try container.decode(FontVariant.self, forKey: .regular)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                medium = try container.decode(FontVariant.self, forKey: .medium)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                semiBold = try container.decode(FontVariant.self, forKey: .semiBold)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bold = try container.decode(FontVariant.self, forKey: .bold)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(light, forKey: .light)
            
            
            
            
            try? container.encodeIfPresent(regular, forKey: .regular)
            
            
            
            
            try? container.encodeIfPresent(medium, forKey: .medium)
            
            
            
            
            try? container.encodeIfPresent(semiBold, forKey: .semiBold)
            
            
            
            
            try? container.encodeIfPresent(bold, forKey: .bold)
            
            
        }
        
    }
}

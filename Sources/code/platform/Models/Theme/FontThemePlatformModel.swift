

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: Font
        Used By: Theme
    */

    class Font: Codable {
        
        
        public var variants: FontVariants
        
        public var family: String
        

        public enum CodingKeys: String, CodingKey {
            
            case variants = "variants"
            
            case family = "family"
            
        }

        public init(family: String, variants: FontVariants) {
            
            self.variants = variants
            
            self.family = family
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                variants = try container.decode(FontVariants.self, forKey: .variants)
                
            
            
            
                family = try container.decode(String.self, forKey: .family)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
            
            
            try? container.encodeIfPresent(family, forKey: .family)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: Font
        Used By: Theme
    */

    class Font: Codable {
        
        
        public var variants: FontVariants
        
        public var family: String
        

        public enum CodingKeys: String, CodingKey {
            
            case variants = "variants"
            
            case family = "family"
            
        }

        public init(family: String, variants: FontVariants) {
            
            self.variants = variants
            
            self.family = family
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                variants = try container.decode(FontVariants.self, forKey: .variants)
                
            
            
            
                family = try container.decode(String.self, forKey: .family)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
            
            
            try? container.encodeIfPresent(family, forKey: .family)
            
            
        }
        
    }
}



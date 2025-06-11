

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ConfigurationProduct
        Used By: Catalog
    */

    class ConfigurationProduct: Codable {
        
        
        public var similar: ConfigurationProductSimilar?
        
        public var variant: ConfigurationProductVariant?
        
        public var detailsGroups: ConfigurationProductDetailsGroups?
        

        public enum CodingKeys: String, CodingKey {
            
            case similar = "similar"
            
            case variant = "variant"
            
            case detailsGroups = "details_groups"
            
        }

        public init(detailsGroups: ConfigurationProductDetailsGroups? = nil, similar: ConfigurationProductSimilar? = nil, variant: ConfigurationProductVariant? = nil) {
            
            self.similar = similar
            
            self.variant = variant
            
            self.detailsGroups = detailsGroups
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    similar = try container.decode(ConfigurationProductSimilar.self, forKey: .similar)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variant = try container.decode(ConfigurationProductVariant.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    detailsGroups = try container.decode(ConfigurationProductDetailsGroups.self, forKey: .detailsGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(similar, forKey: .similar)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
            
            
            try? container.encodeIfPresent(detailsGroups, forKey: .detailsGroups)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ConfigurationProduct
        Used By: Catalog
    */

    class ConfigurationProduct: Codable {
        
        
        public var similar: ConfigurationProductSimilar?
        
        public var variant: ConfigurationProductVariant?
        
        public var detailsGroups: ConfigurationProductDetailsGroups?
        

        public enum CodingKeys: String, CodingKey {
            
            case similar = "similar"
            
            case variant = "variant"
            
            case detailsGroups = "details_groups"
            
        }

        public init(detailsGroups: ConfigurationProductDetailsGroups? = nil, similar: ConfigurationProductSimilar? = nil, variant: ConfigurationProductVariant? = nil) {
            
            self.similar = similar
            
            self.variant = variant
            
            self.detailsGroups = detailsGroups
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    similar = try container.decode(ConfigurationProductSimilar.self, forKey: .similar)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variant = try container.decode(ConfigurationProductVariant.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    detailsGroups = try container.decode(ConfigurationProductDetailsGroups.self, forKey: .detailsGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(similar, forKey: .similar)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
            
            
            try? container.encodeIfPresent(detailsGroups, forKey: .detailsGroups)
            
            
        }
        
    }
}



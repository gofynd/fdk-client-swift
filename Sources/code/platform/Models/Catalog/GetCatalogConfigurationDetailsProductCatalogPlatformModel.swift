

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetCatalogConfigurationDetailsProduct
        Used By: Catalog
    */

    class GetCatalogConfigurationDetailsProduct: Codable {
        
        
        public var compare: CompareFilter?
        
        public var similar: SimilarFilter?
        
        public var variant: VariantFilter?
        
        public var detail: DetailFilter?
        

        public enum CodingKeys: String, CodingKey {
            
            case compare = "compare"
            
            case similar = "similar"
            
            case variant = "variant"
            
            case detail = "detail"
            
        }

        public init(compare: CompareFilter? = nil, detail: DetailFilter? = nil, similar: SimilarFilter? = nil, variant: VariantFilter? = nil) {
            
            self.compare = compare
            
            self.similar = similar
            
            self.variant = variant
            
            self.detail = detail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    compare = try container.decode(CompareFilter.self, forKey: .compare)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    similar = try container.decode(SimilarFilter.self, forKey: .similar)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variant = try container.decode(VariantFilter.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    detail = try container.decode(DetailFilter.self, forKey: .detail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(compare, forKey: .compare)
            
            
            
            
            try? container.encodeIfPresent(similar, forKey: .similar)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
            
            
            try? container.encodeIfPresent(detail, forKey: .detail)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetCatalogConfigurationDetailsProduct
        Used By: Catalog
    */

    class GetCatalogConfigurationDetailsProduct: Codable {
        
        
        public var compare: CompareFilter?
        
        public var similar: SimilarFilter?
        
        public var variant: VariantFilter?
        
        public var detail: DetailFilter?
        

        public enum CodingKeys: String, CodingKey {
            
            case compare = "compare"
            
            case similar = "similar"
            
            case variant = "variant"
            
            case detail = "detail"
            
        }

        public init(compare: CompareFilter? = nil, detail: DetailFilter? = nil, similar: SimilarFilter? = nil, variant: VariantFilter? = nil) {
            
            self.compare = compare
            
            self.similar = similar
            
            self.variant = variant
            
            self.detail = detail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    compare = try container.decode(CompareFilter.self, forKey: .compare)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    similar = try container.decode(SimilarFilter.self, forKey: .similar)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variant = try container.decode(VariantFilter.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    detail = try container.decode(DetailFilter.self, forKey: .detail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(compare, forKey: .compare)
            
            
            
            
            try? container.encodeIfPresent(similar, forKey: .similar)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
            
            
            try? container.encodeIfPresent(detail, forKey: .detail)
            
            
        }
        
    }
}



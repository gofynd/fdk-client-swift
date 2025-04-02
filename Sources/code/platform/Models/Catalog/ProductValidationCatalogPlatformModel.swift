

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductValidation
        Used By: Catalog
    */

    class ProductValidation: Codable {
        
        
        public var gatedCategoryApplicable: Bool?
        
        public var imagelessProducts: Bool?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gatedCategoryApplicable = "gated_category_applicable"
            
            case imagelessProducts = "imageless_products"
            
            case stage = "stage"
            
        }

        public init(gatedCategoryApplicable: Bool? = nil, imagelessProducts: Bool? = nil, stage: String? = nil) {
            
            self.gatedCategoryApplicable = gatedCategoryApplicable
            
            self.imagelessProducts = imagelessProducts
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gatedCategoryApplicable = try container.decode(Bool.self, forKey: .gatedCategoryApplicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imagelessProducts = try container.decode(Bool.self, forKey: .imagelessProducts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gatedCategoryApplicable, forKey: .gatedCategoryApplicable)
            
            
            
            
            try? container.encodeIfPresent(imagelessProducts, forKey: .imagelessProducts)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductValidation
        Used By: Catalog
    */

    class ProductValidation: Codable {
        
        
        public var gatedCategoryApplicable: Bool?
        
        public var imagelessProducts: Bool?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gatedCategoryApplicable = "gated_category_applicable"
            
            case imagelessProducts = "imageless_products"
            
            case stage = "stage"
            
        }

        public init(gatedCategoryApplicable: Bool? = nil, imagelessProducts: Bool? = nil, stage: String? = nil) {
            
            self.gatedCategoryApplicable = gatedCategoryApplicable
            
            self.imagelessProducts = imagelessProducts
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gatedCategoryApplicable = try container.decode(Bool.self, forKey: .gatedCategoryApplicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imagelessProducts = try container.decode(Bool.self, forKey: .imagelessProducts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gatedCategoryApplicable, forKey: .gatedCategoryApplicable)
            
            
            
            
            try? container.encodeIfPresent(imagelessProducts, forKey: .imagelessProducts)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}



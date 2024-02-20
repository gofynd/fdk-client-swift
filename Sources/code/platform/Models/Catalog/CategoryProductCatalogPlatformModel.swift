

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CategoryProduct
        Used By: Catalog
    */

    class CategoryProduct: Codable {
        
        
        public var l3: CategorySubSchema?
        
        public var l1: CategorySubSchema?
        
        public var l2: CategorySubSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case l3 = "l3"
            
            case l1 = "l1"
            
            case l2 = "l2"
            
        }

        public init(l1: CategorySubSchema? = nil, l2: CategorySubSchema? = nil, l3: CategorySubSchema? = nil) {
            
            self.l3 = l3
            
            self.l1 = l1
            
            self.l2 = l2
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    l3 = try container.decode(CategorySubSchema.self, forKey: .l3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l1 = try container.decode(CategorySubSchema.self, forKey: .l1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l2 = try container.decode(CategorySubSchema.self, forKey: .l2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(l3, forKey: .l3)
            
            
            
            
            try? container.encodeIfPresent(l1, forKey: .l1)
            
            
            
            
            try? container.encodeIfPresent(l2, forKey: .l2)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CategoryProduct
        Used By: Catalog
    */

    class CategoryProduct: Codable {
        
        
        public var l3: CategorySubSchema?
        
        public var l1: CategorySubSchema?
        
        public var l2: CategorySubSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case l3 = "l3"
            
            case l1 = "l1"
            
            case l2 = "l2"
            
        }

        public init(l1: CategorySubSchema? = nil, l2: CategorySubSchema? = nil, l3: CategorySubSchema? = nil) {
            
            self.l3 = l3
            
            self.l1 = l1
            
            self.l2 = l2
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    l3 = try container.decode(CategorySubSchema.self, forKey: .l3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l1 = try container.decode(CategorySubSchema.self, forKey: .l1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l2 = try container.decode(CategorySubSchema.self, forKey: .l2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(l3, forKey: .l3)
            
            
            
            
            try? container.encodeIfPresent(l1, forKey: .l1)
            
            
            
            
            try? container.encodeIfPresent(l2, forKey: .l2)
            
            
        }
        
    }
}



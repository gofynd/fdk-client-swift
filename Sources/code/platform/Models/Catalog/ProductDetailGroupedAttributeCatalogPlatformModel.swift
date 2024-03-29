

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductDetailGroupedAttribute
        Used By: Catalog
    */

    class ProductDetailGroupedAttribute: Codable {
        
        
        public var details: [ProductDetailAttribute]?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case details = "details"
            
            case title = "title"
            
        }

        public init(details: [ProductDetailAttribute]? = nil, title: String? = nil) {
            
            self.details = details
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    details = try container.decode([ProductDetailAttribute].self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductDetailGroupedAttribute
        Used By: Catalog
    */

    class ProductDetailGroupedAttribute: Codable {
        
        
        public var details: [ProductDetailAttribute]?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case details = "details"
            
            case title = "title"
            
        }

        public init(details: [ProductDetailAttribute]? = nil, title: String? = nil) {
            
            self.details = details
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    details = try container.decode([ProductDetailAttribute].self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}



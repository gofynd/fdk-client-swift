

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ChannelValidation
        Used By: Catalog
    */

    class ChannelValidation: Codable {
        
        
        public var product: ProductValidation?
        
        public var brand: BrandValidationItem?
        
        public var company: CompanyValidation?
        
        public var location: LocationValidation?
        

        public enum CodingKeys: String, CodingKey {
            
            case product = "product"
            
            case brand = "brand"
            
            case company = "company"
            
            case location = "location"
            
        }

        public init(brand: BrandValidationItem? = nil, company: CompanyValidation? = nil, location: LocationValidation? = nil, product: ProductValidation? = nil) {
            
            self.product = product
            
            self.brand = brand
            
            self.company = company
            
            self.location = location
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    product = try container.decode(ProductValidation.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(BrandValidationItem.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(CompanyValidation.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    location = try container.decode(LocationValidation.self, forKey: .location)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(location, forKey: .location)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ChannelValidation
        Used By: Catalog
    */

    class ChannelValidation: Codable {
        
        
        public var product: ProductValidation?
        
        public var brand: BrandValidationItem?
        
        public var company: CompanyValidation?
        
        public var location: LocationValidation?
        

        public enum CodingKeys: String, CodingKey {
            
            case product = "product"
            
            case brand = "brand"
            
            case company = "company"
            
            case location = "location"
            
        }

        public init(brand: BrandValidationItem? = nil, company: CompanyValidation? = nil, location: LocationValidation? = nil, product: ProductValidation? = nil) {
            
            self.product = product
            
            self.brand = brand
            
            self.company = company
            
            self.location = location
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    product = try container.decode(ProductValidation.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(BrandValidationItem.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(CompanyValidation.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    location = try container.decode(LocationValidation.self, forKey: .location)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(location, forKey: .location)
            
            
        }
        
    }
}



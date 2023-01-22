

import Foundation
public extension PlatformClient {
    /*
        Model: GetCatalogConfigurationMetaData
        Used By: Catalog
    */

    class GetCatalogConfigurationMetaData: Codable {
        
        
        public var product: GetCatalogConfigurationDetailsProduct?
        
        public var listing: MetaDataListingResponse?
        

        public enum CodingKeys: String, CodingKey {
            
            case product = "product"
            
            case listing = "listing"
            
        }

        public init(listing: MetaDataListingResponse? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            
            self.product = product
            
            self.listing = listing
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listing = try container.decode(MetaDataListingResponse.self, forKey: .listing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(listing, forKey: .listing)
            
            
        }
        
    }
}

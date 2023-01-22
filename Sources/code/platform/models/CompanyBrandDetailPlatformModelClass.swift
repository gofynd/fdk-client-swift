

import Foundation
public extension PlatformClient {
    /*
        Model: CompanyBrandDetail
        Used By: Catalog
    */

    class CompanyBrandDetail: Codable {
        
        
        public var brandId: Int?
        
        public var brandName: String?
        
        public var totalArticle: Int?
        
        public var companyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandId = "brand_id"
            
            case brandName = "brand_name"
            
            case totalArticle = "total_article"
            
            case companyId = "company_id"
            
        }

        public init(brandId: Int? = nil, brandName: String? = nil, companyId: Int? = nil, totalArticle: Int? = nil) {
            
            self.brandId = brandId
            
            self.brandName = brandName
            
            self.totalArticle = totalArticle
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandId = try container.decode(Int.self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalArticle = try container.decode(Int.self, forKey: .totalArticle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(totalArticle, forKey: .totalArticle)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}

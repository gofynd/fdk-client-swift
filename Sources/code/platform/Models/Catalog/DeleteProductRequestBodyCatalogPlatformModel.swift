

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DeleteProductRequestBody
        Used By: Catalog
    */

    class DeleteProductRequestBody: Codable {
        
        
        public var brandUid: Int?
        
        public var itemCode: String?
        
        public var companyId: String?
        
        public var itemId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandUid = "brand_uid"
            
            case itemCode = "item_code"
            
            case companyId = "company_id"
            
            case itemId = "item_id"
            
        }

        public init(brandUid: Int? = nil, companyId: String? = nil, itemCode: String? = nil, itemId: Int? = nil) {
            
            self.brandUid = brandUid
            
            self.itemCode = itemCode
            
            self.companyId = companyId
            
            self.itemId = itemId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandUid = try container.decode(Int.self, forKey: .brandUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DeleteProductRequestBody
        Used By: Catalog
    */

    class DeleteProductRequestBody: Codable {
        
        
        public var brandUid: Int?
        
        public var itemCode: String?
        
        public var companyId: String?
        
        public var itemId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandUid = "brand_uid"
            
            case itemCode = "item_code"
            
            case companyId = "company_id"
            
            case itemId = "item_id"
            
        }

        public init(brandUid: Int? = nil, companyId: String? = nil, itemCode: String? = nil, itemId: Int? = nil) {
            
            self.brandUid = brandUid
            
            self.itemCode = itemCode
            
            self.companyId = companyId
            
            self.itemId = itemId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandUid = try container.decode(Int.self, forKey: .brandUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
        }
        
    }
}



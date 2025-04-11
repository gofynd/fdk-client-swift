

import Foundation


public extension PlatformClient.Discount {
    /*
        Model: FileJobRequestSchema
        Used By: Discount
    */

    class FileJobRequestSchema: Codable {
        
        
        public var name: String
        
        public var isActive: Bool
        
        public var companyId: Int
        
        public var appId: String
        
        public var jobType: String
        
        public var discountType: String?
        
        public var discountLevel: String
        
        public var filePath: String?
        
        public var brandIds: [Int]?
        
        public var storeIds: [Int]?
        
        public var validity: ValidityObject
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case isActive = "is_active"
            
            case companyId = "company_id"
            
            case appId = "app_id"
            
            case jobType = "job_type"
            
            case discountType = "discount_type"
            
            case discountLevel = "discount_level"
            
            case filePath = "file_path"
            
            case brandIds = "brand_ids"
            
            case storeIds = "store_ids"
            
            case validity = "validity"
            
            case meta = "meta"
            
        }

        public init(appId: String, brandIds: [Int]? = nil, companyId: Int, discountLevel: String, discountType: String? = nil, filePath: String? = nil, isActive: Bool, jobType: String, meta: [String: Any]? = nil, name: String, storeIds: [Int]? = nil, validity: ValidityObject) {
            
            self.name = name
            
            self.isActive = isActive
            
            self.companyId = companyId
            
            self.appId = appId
            
            self.jobType = jobType
            
            self.discountType = discountType
            
            self.discountLevel = discountLevel
            
            self.filePath = filePath
            
            self.brandIds = brandIds
            
            self.storeIds = storeIds
            
            self.validity = validity
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                jobType = try container.decode(String.self, forKey: .jobType)
                
            
            
            
                do {
                    discountType = try container.decode(String.self, forKey: .discountType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                discountLevel = try container.decode(String.self, forKey: .discountLevel)
                
            
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandIds = try container.decode([Int].self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                validity = try container.decode(ValidityObject.self, forKey: .validity)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(discountLevel, forKey: .discountLevel)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}





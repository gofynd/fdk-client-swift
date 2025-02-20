

import Foundation


public extension PlatformClient.Discount {
    /*
        Model: CreateUpdateDiscount
        Used By: Discount
    */

    class CreateUpdateDiscount: Codable {
        
        
        public var name: String
        
        public var companyId: Int
        
        public var isActive: Bool
        
        public var appIds: [String]
        
        public var extensionIds: [String]?
        
        public var jobType: String
        
        public var discountType: String
        
        public var discountLevel: String
        
        public var value: Int?
        
        public var filePath: String?
        
        public var brandIds: [Int]?
        
        public var storeIds: [Int]?
        
        public var zoneIds: [String]?
        
        public var validity: ValidityObject
        
        public var discountMeta: DiscountMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case appIds = "app_ids"
            
            case extensionIds = "extension_ids"
            
            case jobType = "job_type"
            
            case discountType = "discount_type"
            
            case discountLevel = "discount_level"
            
            case value = "value"
            
            case filePath = "file_path"
            
            case brandIds = "brand_ids"
            
            case storeIds = "store_ids"
            
            case zoneIds = "zone_ids"
            
            case validity = "validity"
            
            case discountMeta = "discount_meta"
            
        }

        public init(appIds: [String], brandIds: [Int]? = nil, companyId: Int, discountLevel: String, discountMeta: DiscountMeta? = nil, discountType: String, extensionIds: [String]? = nil, filePath: String? = nil, isActive: Bool, jobType: String, name: String, storeIds: [Int]? = nil, validity: ValidityObject, value: Int? = nil, zoneIds: [String]? = nil) {
            
            self.name = name
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.appIds = appIds
            
            self.extensionIds = extensionIds
            
            self.jobType = jobType
            
            self.discountType = discountType
            
            self.discountLevel = discountLevel
            
            self.value = value
            
            self.filePath = filePath
            
            self.brandIds = brandIds
            
            self.storeIds = storeIds
            
            self.zoneIds = zoneIds
            
            self.validity = validity
            
            self.discountMeta = discountMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                appIds = try container.decode([String].self, forKey: .appIds)
                
            
            
            
                do {
                    extensionIds = try container.decode([String].self, forKey: .extensionIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                jobType = try container.decode(String.self, forKey: .jobType)
                
            
            
            
                discountType = try container.decode(String.self, forKey: .discountType)
                
            
            
            
                discountLevel = try container.decode(String.self, forKey: .discountLevel)
                
            
            
            
                do {
                    value = try container.decode(Int.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
                do {
                    zoneIds = try container.decode([String].self, forKey: .zoneIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                validity = try container.decode(ValidityObject.self, forKey: .validity)
                
            
            
            
                do {
                    discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(appIds, forKey: .appIds)
            
            
            
            
            try? container.encodeIfPresent(extensionIds, forKey: .extensionIds)
            
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(discountLevel, forKey: .discountLevel)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(zoneIds, forKey: .zoneIds)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
        }
        
    }
}





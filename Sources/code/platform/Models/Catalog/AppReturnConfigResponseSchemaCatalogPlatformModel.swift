

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppReturnConfigResponseSchema
        Used By: Catalog
    */

    class AppReturnConfigResponseSchema: Codable {
        
        
        public var appId: String?
        
        public var categoryCount: Int?
        
        public var companyId: Int?
        
        public var createdBy: [String: Any]?
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var returnConfigLevel: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case categoryCount = "category_count"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case returnConfigLevel = "return_config_level"
            
        }

        public init(appId: String? = nil, categoryCount: Int? = nil, companyId: Int? = nil, createdBy: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, returnConfigLevel: String? = nil) {
            
            self.appId = appId
            
            self.categoryCount = categoryCount
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.returnConfigLevel = returnConfigLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryCount = try container.decode(Int.self, forKey: .categoryCount)
                
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
                
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfigLevel = try container.decode(String.self, forKey: .returnConfigLevel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(categoryCount, forKey: .categoryCount)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(returnConfigLevel, forKey: .returnConfigLevel)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppReturnConfigResponseSchema
        Used By: Catalog
    */

    class AppReturnConfigResponseSchema: Codable {
        
        
        public var appId: String?
        
        public var categoryCount: Int?
        
        public var companyId: Int?
        
        public var createdBy: [String: Any]?
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var returnConfigLevel: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case categoryCount = "category_count"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case returnConfigLevel = "return_config_level"
            
        }

        public init(appId: String? = nil, categoryCount: Int? = nil, companyId: Int? = nil, createdBy: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, returnConfigLevel: String? = nil) {
            
            self.appId = appId
            
            self.categoryCount = categoryCount
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.returnConfigLevel = returnConfigLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryCount = try container.decode(Int.self, forKey: .categoryCount)
                
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
                
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfigLevel = try container.decode(String.self, forKey: .returnConfigLevel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(categoryCount, forKey: .categoryCount)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(returnConfigLevel, forKey: .returnConfigLevel)
            
            
        }
        
    }
}



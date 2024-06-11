

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BulkProductJob
        Used By: Catalog
    */

    class BulkProductJob: Codable {
        
        
        public var companyId: Int?
        
        public var templateTag: String?
        
        public var productType: String?
        
        public var department: String?
        
        public var filePath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case templateTag = "template_tag"
            
            case productType = "product_type"
            
            case department = "department"
            
            case filePath = "file_path"
            
        }

        public init(companyId: Int? = nil, department: String? = nil, filePath: String? = nil, productType: String? = nil, templateTag: String? = nil) {
            
            self.companyId = companyId
            
            self.templateTag = templateTag
            
            self.productType = productType
            
            self.department = department
            
            self.filePath = filePath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateTag = try container.decode(String.self, forKey: .templateTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productType = try container.decode(String.self, forKey: .productType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    department = try container.decode(String.self, forKey: .department)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BulkProductJob
        Used By: Catalog
    */

    class BulkProductJob: Codable {
        
        
        public var companyId: Int?
        
        public var templateTag: String?
        
        public var productType: String?
        
        public var department: String?
        
        public var filePath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case templateTag = "template_tag"
            
            case productType = "product_type"
            
            case department = "department"
            
            case filePath = "file_path"
            
        }

        public init(companyId: Int? = nil, department: String? = nil, filePath: String? = nil, productType: String? = nil, templateTag: String? = nil) {
            
            self.companyId = companyId
            
            self.templateTag = templateTag
            
            self.productType = productType
            
            self.department = department
            
            self.filePath = filePath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateTag = try container.decode(String.self, forKey: .templateTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productType = try container.decode(String.self, forKey: .productType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    department = try container.decode(String.self, forKey: .department)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BulkInventoryJob
        Used By: Catalog
    */

    class BulkInventoryJob: Codable {
        
        
        public var companyId: String
        
        public var fileType: String
        
        public var filePath: String
        
        public var tags: [String]?
        
        public var meta: BulkMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case fileType = "file_type"
            
            case filePath = "file_path"
            
            case tags = "tags"
            
            case meta = "meta"
            
        }

        public init(companyId: String, filePath: String, fileType: String, meta: BulkMeta? = nil, tags: [String]? = nil) {
            
            self.companyId = companyId
            
            self.fileType = fileType
            
            self.filePath = filePath
            
            self.tags = tags
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
                fileType = try container.decode(String.self, forKey: .fileType)
                
            
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(BulkMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BulkInventoryJob
        Used By: Catalog
    */

    class BulkInventoryJob: Codable {
        
        
        public var companyId: String
        
        public var fileType: String
        
        public var filePath: String
        
        public var tags: [String]?
        
        public var meta: BulkMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case fileType = "file_type"
            
            case filePath = "file_path"
            
            case tags = "tags"
            
            case meta = "meta"
            
        }

        public init(companyId: String, filePath: String, fileType: String, meta: BulkMeta? = nil, tags: [String]? = nil) {
            
            self.companyId = companyId
            
            self.fileType = fileType
            
            self.filePath = filePath
            
            self.tags = tags
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
                fileType = try container.decode(String.self, forKey: .fileType)
                
            
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(BulkMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



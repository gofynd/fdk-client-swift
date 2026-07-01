

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BulkProductRequestSchema
        Used By: Catalog
    */

    class BulkProductRequestSchema: Codable {
        
        
        public var batchId: String
        
        public var companyId: Int
        
        public var data: [[String: Any]]
        
        public var templateTag: String
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case companyId = "company_id"
            
            case data = "data"
            
            case templateTag = "template_tag"
            
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            
            self.batchId = batchId
            
            self.companyId = companyId
            
            self.data = data
            
            self.templateTag = templateTag
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                data = try container.decode([[String: Any]].self, forKey: .data)
                
            
            
            
                templateTag = try container.decode(String.self, forKey: .templateTag)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BulkProductRequestSchema
        Used By: Catalog
    */

    class BulkProductRequestSchema: Codable {
        
        
        public var batchId: String
        
        public var companyId: Int
        
        public var data: [[String: Any]]
        
        public var templateTag: String
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case companyId = "company_id"
            
            case data = "data"
            
            case templateTag = "template_tag"
            
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            
            self.batchId = batchId
            
            self.companyId = companyId
            
            self.data = data
            
            self.templateTag = templateTag
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                data = try container.decode([[String: Any]].self, forKey: .data)
                
            
            
            
                templateTag = try container.decode(String.self, forKey: .templateTag)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
        }
        
    }
}



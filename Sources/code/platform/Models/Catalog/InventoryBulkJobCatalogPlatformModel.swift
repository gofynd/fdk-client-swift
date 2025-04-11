

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryBulkJob
        Used By: Catalog
    */

    class InventoryBulkJob: Codable {
        
        
        public var companyId: Int?
        
        public var filePath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case filePath = "file_path"
            
        }

        public init(companyId: Int? = nil, filePath: String? = nil) {
            
            self.companyId = companyId
            
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
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryBulkJob
        Used By: Catalog
    */

    class InventoryBulkJob: Codable {
        
        
        public var companyId: Int?
        
        public var filePath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case filePath = "file_path"
            
        }

        public init(companyId: Int? = nil, filePath: String? = nil) {
            
            self.companyId = companyId
            
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
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
        }
        
    }
}



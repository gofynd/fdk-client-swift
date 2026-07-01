

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BulkResponseSchema
        Used By: Catalog
    */

    class BulkResponseSchema: Codable {
        
        
        public var batchId: String
        
        public var createdBy: UserInfo?
        
        public var createdOn: String
        
        public var isActive: Bool?
        
        public var modifiedBy: UserInfo?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case isActive = "is_active"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
        }

        public init(batchId: String, createdBy: UserInfo? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserInfo? = nil, modifiedOn: String? = nil) {
            
            self.batchId = batchId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.isActive = isActive
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                do {
                    createdBy = try container.decode(UserInfo.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BulkResponseSchema
        Used By: Catalog
    */

    class BulkResponseSchema: Codable {
        
        
        public var batchId: String
        
        public var createdBy: UserInfo?
        
        public var createdOn: String
        
        public var isActive: Bool?
        
        public var modifiedBy: UserInfo?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case isActive = "is_active"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
        }

        public init(batchId: String, createdBy: UserInfo? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserInfo? = nil, modifiedOn: String? = nil) {
            
            self.batchId = batchId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.isActive = isActive
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                do {
                    createdBy = try container.decode(UserInfo.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}



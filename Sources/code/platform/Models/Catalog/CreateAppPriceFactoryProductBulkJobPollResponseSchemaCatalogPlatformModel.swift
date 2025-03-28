

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductBulkJobPollResponseSchema
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductBulkJobPollResponseSchema: Codable {
        
        
        public var status: String?
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        
        public var errorFile: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var createdBy: UserInfo?
        
        public var modifiedBy: UserInfo?
        
        public var stage: String?
        
        public var isActive: Bool?
        
        public var id: String?
        
        public var errorFileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
            case errorFile = "error_file"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case stage = "stage"
            
            case isActive = "is_active"
            
            case id = "_id"
            
            case errorFileUrl = "error_file_url"
            
        }

        public init(createdBy: UserInfo? = nil, createdOn: String? = nil, errorFile: String? = nil, errorFileUrl: String? = nil, failedRecords: Int? = nil, isActive: Bool? = nil, modifiedBy: UserInfo? = nil, modifiedOn: String? = nil, stage: String? = nil, status: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil, id: String? = nil) {
            
            self.status = status
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
            self.errorFile = errorFile
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.stage = stage
            
            self.isActive = isActive
            
            self.id = id
            
            self.errorFileUrl = errorFileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successRecords = try container.decode(Int.self, forKey: .successRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecords = try container.decode(Int.self, forKey: .failedRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFile = try container.decode(String.self, forKey: .errorFile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
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
                    createdBy = try container.decode(UserInfo.self, forKey: .createdBy)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(successRecords, forKey: .successRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(errorFile, forKey: .errorFile)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductBulkJobPollResponseSchema
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductBulkJobPollResponseSchema: Codable {
        
        
        public var status: String?
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        
        public var errorFile: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var createdBy: UserInfo?
        
        public var modifiedBy: UserInfo?
        
        public var stage: String?
        
        public var isActive: Bool?
        
        public var id: String?
        
        public var errorFileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
            case errorFile = "error_file"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case stage = "stage"
            
            case isActive = "is_active"
            
            case id = "_id"
            
            case errorFileUrl = "error_file_url"
            
        }

        public init(createdBy: UserInfo? = nil, createdOn: String? = nil, errorFile: String? = nil, errorFileUrl: String? = nil, failedRecords: Int? = nil, isActive: Bool? = nil, modifiedBy: UserInfo? = nil, modifiedOn: String? = nil, stage: String? = nil, status: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil, id: String? = nil) {
            
            self.status = status
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
            self.errorFile = errorFile
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.stage = stage
            
            self.isActive = isActive
            
            self.id = id
            
            self.errorFileUrl = errorFileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successRecords = try container.decode(Int.self, forKey: .successRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecords = try container.decode(Int.self, forKey: .failedRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFile = try container.decode(String.self, forKey: .errorFile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
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
                    createdBy = try container.decode(UserInfo.self, forKey: .createdBy)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(successRecords, forKey: .successRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(errorFile, forKey: .errorFile)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
        }
        
    }
}



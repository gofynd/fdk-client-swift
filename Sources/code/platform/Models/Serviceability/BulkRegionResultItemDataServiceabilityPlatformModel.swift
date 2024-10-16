

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkRegionResultItemData
        Used By: Serviceability
    */

    class BulkRegionResultItemData: Codable {
        
        
        public var filePath: String
        
        public var failed: Int?
        
        public var failedRecords: [[String: Any]]?
        
        public var action: String
        
        public var batchId: String
        
        public var country: String
        
        public var success: Int?
        
        public var region: String
        
        public var status: String
        
        public var total: Int?
        
        public var errorFilePath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case filePath = "file_path"
            
            case failed = "failed"
            
            case failedRecords = "failed_records"
            
            case action = "action"
            
            case batchId = "batch_id"
            
            case country = "country"
            
            case success = "success"
            
            case region = "region"
            
            case status = "status"
            
            case total = "total"
            
            case errorFilePath = "error_file_path"
            
        }

        public init(action: String, batchId: String, country: String, errorFilePath: String? = nil, failed: Int? = nil, failedRecords: [[String: Any]]? = nil, filePath: String, region: String, status: String, success: Int? = nil, total: Int? = nil) {
            
            self.filePath = filePath
            
            self.failed = failed
            
            self.failedRecords = failedRecords
            
            self.action = action
            
            self.batchId = batchId
            
            self.country = country
            
            self.success = success
            
            self.region = region
            
            self.status = status
            
            self.total = total
            
            self.errorFilePath = errorFilePath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
                
            
            
            
                do {
                    failed = try container.decode(Int.self, forKey: .failed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    success = try container.decode(Int.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFilePath = try container.decode(String.self, forKey: .errorFilePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(failed, forKey: .failed)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(errorFilePath, forKey: .errorFilePath)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkRegionResultItemData
        Used By: Serviceability
    */

    class BulkRegionResultItemData: Codable {
        
        
        public var filePath: String
        
        public var failed: Int?
        
        public var failedRecords: [[String: Any]]?
        
        public var action: String
        
        public var batchId: String
        
        public var country: String
        
        public var success: Int?
        
        public var region: String
        
        public var status: String
        
        public var total: Int?
        
        public var errorFilePath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case filePath = "file_path"
            
            case failed = "failed"
            
            case failedRecords = "failed_records"
            
            case action = "action"
            
            case batchId = "batch_id"
            
            case country = "country"
            
            case success = "success"
            
            case region = "region"
            
            case status = "status"
            
            case total = "total"
            
            case errorFilePath = "error_file_path"
            
        }

        public init(action: String, batchId: String, country: String, errorFilePath: String? = nil, failed: Int? = nil, failedRecords: [[String: Any]]? = nil, filePath: String, region: String, status: String, success: Int? = nil, total: Int? = nil) {
            
            self.filePath = filePath
            
            self.failed = failed
            
            self.failedRecords = failedRecords
            
            self.action = action
            
            self.batchId = batchId
            
            self.country = country
            
            self.success = success
            
            self.region = region
            
            self.status = status
            
            self.total = total
            
            self.errorFilePath = errorFilePath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
                
            
            
            
                do {
                    failed = try container.decode(Int.self, forKey: .failed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    success = try container.decode(Int.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFilePath = try container.decode(String.self, forKey: .errorFilePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(failed, forKey: .failed)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(errorFilePath, forKey: .errorFilePath)
            
            
        }
        
    }
}



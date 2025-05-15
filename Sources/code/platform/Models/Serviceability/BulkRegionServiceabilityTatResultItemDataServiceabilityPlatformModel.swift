

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkRegionServiceabilityTatResultItemData
        Used By: Serviceability
    */

    class BulkRegionServiceabilityTatResultItemData: Codable {
        
        
        public var country: String?
        
        public var region: String?
        
        public var type: String?
        
        public var batchId: String?
        
        public var status: String?
        
        public var failedRecords: [[String: Any]]?
        
        public var filePath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case region = "region"
            
            case type = "type"
            
            case batchId = "batch_id"
            
            case status = "status"
            
            case failedRecords = "failed_records"
            
            case filePath = "file_path"
            
        }

        public init(batchId: String? = nil, country: String? = nil, failedRecords: [[String: Any]]? = nil, filePath: String? = nil, region: String? = nil, status: String? = nil, type: String? = nil) {
            
            self.country = country
            
            self.region = region
            
            self.type = type
            
            self.batchId = batchId
            
            self.status = status
            
            self.failedRecords = failedRecords
            
            self.filePath = filePath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    region = try container.decode(String.self, forKey: .region)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkRegionServiceabilityTatResultItemData
        Used By: Serviceability
    */

    class BulkRegionServiceabilityTatResultItemData: Codable {
        
        
        public var country: String?
        
        public var region: String?
        
        public var type: String?
        
        public var batchId: String?
        
        public var status: String?
        
        public var failedRecords: [[String: Any]]?
        
        public var filePath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case region = "region"
            
            case type = "type"
            
            case batchId = "batch_id"
            
            case status = "status"
            
            case failedRecords = "failed_records"
            
            case filePath = "file_path"
            
        }

        public init(batchId: String? = nil, country: String? = nil, failedRecords: [[String: Any]]? = nil, filePath: String? = nil, region: String? = nil, status: String? = nil, type: String? = nil) {
            
            self.country = country
            
            self.region = region
            
            self.type = type
            
            self.batchId = batchId
            
            self.status = status
            
            self.failedRecords = failedRecords
            
            self.filePath = filePath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    region = try container.decode(String.self, forKey: .region)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
        }
        
    }
}



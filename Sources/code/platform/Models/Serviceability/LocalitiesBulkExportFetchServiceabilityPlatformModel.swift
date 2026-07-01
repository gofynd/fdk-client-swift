

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: LocalitiesBulkExportFetch
        Used By: Serviceability
    */

    class LocalitiesBulkExportFetch: Codable {
        
        
        public var batchId: String
        
        public var status: String
        
        public var downloadPercentage: Int
        
        public var urlPath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case status = "status"
            
            case downloadPercentage = "download_percentage"
            
            case urlPath = "url_path"
            
        }

        public init(batchId: String, downloadPercentage: Int, status: String, urlPath: String? = nil) {
            
            self.batchId = batchId
            
            self.status = status
            
            self.downloadPercentage = downloadPercentage
            
            self.urlPath = urlPath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                downloadPercentage = try container.decode(Int.self, forKey: .downloadPercentage)
                
            
            
            
                do {
                    urlPath = try container.decode(String.self, forKey: .urlPath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(downloadPercentage, forKey: .downloadPercentage)
            
            
            
            
            try? container.encodeIfPresent(urlPath, forKey: .urlPath)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: LocalitiesBulkExportFetch
        Used By: Serviceability
    */

    class LocalitiesBulkExportFetch: Codable {
        
        
        public var batchId: String
        
        public var status: String
        
        public var downloadPercentage: Int
        
        public var urlPath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case status = "status"
            
            case downloadPercentage = "download_percentage"
            
            case urlPath = "url_path"
            
        }

        public init(batchId: String, downloadPercentage: Int, status: String, urlPath: String? = nil) {
            
            self.batchId = batchId
            
            self.status = status
            
            self.downloadPercentage = downloadPercentage
            
            self.urlPath = urlPath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                downloadPercentage = try container.decode(Int.self, forKey: .downloadPercentage)
                
            
            
            
                do {
                    urlPath = try container.decode(String.self, forKey: .urlPath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(downloadPercentage, forKey: .downloadPercentage)
            
            
            
            
            try? container.encodeIfPresent(urlPath, forKey: .urlPath)
            
            
        }
        
    }
}



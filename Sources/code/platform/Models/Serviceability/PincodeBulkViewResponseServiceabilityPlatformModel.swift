

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeBulkViewResponse
        Used By: Serviceability
    */

    class PincodeBulkViewResponse: Codable {
        
        
        public var batchId: String
        
        public var s3Url: String
        
        public var statusCode: Int?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case s3Url = "s3_url"
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(batchId: String, s3Url: String, statusCode: Int? = nil, success: Bool? = nil) {
            
            self.batchId = batchId
            
            self.s3Url = s3Url
            
            self.statusCode = statusCode
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                s3Url = try container.decode(String.self, forKey: .s3Url)
                
            
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(s3Url, forKey: .s3Url)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeBulkViewResponse
        Used By: Serviceability
    */

    class PincodeBulkViewResponse: Codable {
        
        
        public var batchId: String
        
        public var s3Url: String
        
        public var statusCode: Int?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case s3Url = "s3_url"
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(batchId: String, s3Url: String, statusCode: Int? = nil, success: Bool? = nil) {
            
            self.batchId = batchId
            
            self.s3Url = s3Url
            
            self.statusCode = statusCode
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                s3Url = try container.decode(String.self, forKey: .s3Url)
                
            
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(s3Url, forKey: .s3Url)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeMopBulkData
        Used By: Serviceability
    */

    class PincodeMopBulkData: Codable {
        
        
        public var batchId: String?
        
        public var s3Url: String
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case s3Url = "s3_url"
            
        }

        public init(batchId: String? = nil, s3Url: String) {
            
            self.batchId = batchId
            
            self.s3Url = s3Url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                s3Url = try container.decode(String.self, forKey: .s3Url)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(s3Url, forKey: .s3Url)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeMopBulkData
        Used By: Serviceability
    */

    class PincodeMopBulkData: Codable {
        
        
        public var batchId: String?
        
        public var s3Url: String
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case s3Url = "s3_url"
            
        }

        public init(batchId: String? = nil, s3Url: String) {
            
            self.batchId = batchId
            
            self.s3Url = s3Url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                s3Url = try container.decode(String.self, forKey: .s3Url)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(s3Url, forKey: .s3Url)
            
            
        }
        
    }
}



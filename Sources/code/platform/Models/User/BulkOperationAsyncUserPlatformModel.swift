

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkOperationAsync
        Used By: User
    */

    class BulkOperationAsync: Codable {
        
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var processingType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case requestId = "request_id"
            
            case processingType = "processing_type"
            
        }

        public init(processingType: String? = nil, requestId: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.requestId = requestId
            
            self.processingType = processingType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingType = try container.decode(String.self, forKey: .processingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(processingType, forKey: .processingType)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: FulfillmentOptionBulkValidateData
        Used By: Serviceability
    */

    class FulfillmentOptionBulkValidateData: Codable {
        
        
        public var requestId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
        }

        public init(requestId: String? = nil) {
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: FulfillmentOptionBulkValidateData
        Used By: Serviceability
    */

    class FulfillmentOptionBulkValidateData: Codable {
        
        
        public var requestId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
        }

        public init(requestId: String? = nil) {
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}



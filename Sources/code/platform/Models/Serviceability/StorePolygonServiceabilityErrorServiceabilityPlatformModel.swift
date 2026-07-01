

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityError
        Used By: Serviceability
    */

    class StorePolygonServiceabilityError: Codable {
        
        
        public var storeCode: String
        
        public var message: String
        
        public var errorCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeCode = "store_code"
            
            case message = "message"
            
            case errorCode = "error_code"
            
        }

        public init(errorCode: String? = nil, message: String, storeCode: String) {
            
            self.storeCode = storeCode
            
            self.message = message
            
            self.errorCode = errorCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    errorCode = try container.decode(String.self, forKey: .errorCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errorCode, forKey: .errorCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityError
        Used By: Serviceability
    */

    class StorePolygonServiceabilityError: Codable {
        
        
        public var storeCode: String
        
        public var message: String
        
        public var errorCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeCode = "store_code"
            
            case message = "message"
            
            case errorCode = "error_code"
            
        }

        public init(errorCode: String? = nil, message: String, storeCode: String) {
            
            self.storeCode = storeCode
            
            self.message = message
            
            self.errorCode = errorCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    errorCode = try container.decode(String.self, forKey: .errorCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errorCode, forKey: .errorCode)
            
            
        }
        
    }
}



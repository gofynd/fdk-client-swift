

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CommonError
        Used By: Serviceability
    */

    class CommonError: Codable {
        
        
        public var statusCode: String?
        
        public var error: [String: Any]?
        
        public var success: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(error: [String: Any]? = nil, statusCode: String? = nil, success: String? = nil) {
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statusCode = try container.decode(String.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(String.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CommonError
        Used By: Serviceability
    */

    class CommonError: Codable {
        
        
        public var statusCode: String?
        
        public var error: [String: Any]?
        
        public var success: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(error: [String: Any]? = nil, statusCode: String? = nil, success: String? = nil) {
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statusCode = try container.decode(String.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(String.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



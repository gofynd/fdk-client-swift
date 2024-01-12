

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ErrorResponse
        Used By: Order
    */

    class ErrorResponse: Codable {
        
        
        public var status: Int?
        
        public var success: Bool?
        
        public var message: String
        
        public var errorTrace: String?
        
        public var error: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case success = "success"
            
            case message = "message"
            
            case errorTrace = "error_trace"
            
            case error = "error"
            
        }

        public init(error: String? = nil, errorTrace: String? = nil, message: String, status: Int? = nil, success: Bool? = nil) {
            
            self.status = status
            
            self.success = success
            
            self.message = message
            
            self.errorTrace = errorTrace
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
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
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    errorTrace = try container.decode(String.self, forKey: .errorTrace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(status, forKey: .status)
            
            
            
            
            try? container.encode(success, forKey: .success)
            
            
            
            
            try? container.encode(message, forKey: .message)
            
            
            
            
            try? container.encode(errorTrace, forKey: .errorTrace)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ErrorResponse
        Used By: Order
    */

    class ErrorResponse: Codable {
        
        
        public var status: Int?
        
        public var success: Bool?
        
        public var message: String
        
        public var errorTrace: String?
        
        public var error: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case success = "success"
            
            case message = "message"
            
            case errorTrace = "error_trace"
            
            case error = "error"
            
        }

        public init(error: String? = nil, errorTrace: String? = nil, message: String, status: Int? = nil, success: Bool? = nil) {
            
            self.status = status
            
            self.success = success
            
            self.message = message
            
            self.errorTrace = errorTrace
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
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
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    errorTrace = try container.decode(String.self, forKey: .errorTrace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(status, forKey: .status)
            
            
            
            
            try? container.encode(success, forKey: .success)
            
            
            
            
            try? container.encode(message, forKey: .message)
            
            
            
            
            try? container.encode(errorTrace, forKey: .errorTrace)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



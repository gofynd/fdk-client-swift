

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ErrorResponseSchema
        Used By: Order
    */

    class ErrorResponseSchema: Codable {
        
        
        public var status: Int?
        
        public var success: Bool?
        
        public var message: String
        
        public var errorTrace: String?
        
        public var error: String?
        
        public var remarks: String?
        
        public var statusCode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case success = "success"
            
            case message = "message"
            
            case errorTrace = "error_trace"
            
            case error = "error"
            
            case remarks = "remarks"
            
            case statusCode = "status_code"
            
        }

        public init(error: String? = nil, errorTrace: String? = nil, message: String, remarks: String? = nil, status: Int? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            
            self.status = status
            
            self.success = success
            
            self.message = message
            
            self.errorTrace = errorTrace
            
            self.error = error
            
            self.remarks = remarks
            
            self.statusCode = statusCode
            
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
                
            
            
                do {
                    remarks = try container.decode(String.self, forKey: .remarks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(remarks, forKey: .remarks)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ErrorResponseSchema
        Used By: Order
    */

    class ErrorResponseSchema: Codable {
        
        
        public var status: Int?
        
        public var success: Bool?
        
        public var message: String
        
        public var errorTrace: String?
        
        public var error: String?
        
        public var remarks: String?
        
        public var statusCode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case success = "success"
            
            case message = "message"
            
            case errorTrace = "error_trace"
            
            case error = "error"
            
            case remarks = "remarks"
            
            case statusCode = "status_code"
            
        }

        public init(error: String? = nil, errorTrace: String? = nil, message: String, remarks: String? = nil, status: Int? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            
            self.status = status
            
            self.success = success
            
            self.message = message
            
            self.errorTrace = errorTrace
            
            self.error = error
            
            self.remarks = remarks
            
            self.statusCode = statusCode
            
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
                
            
            
                do {
                    remarks = try container.decode(String.self, forKey: .remarks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(remarks, forKey: .remarks)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
        }
        
    }
}



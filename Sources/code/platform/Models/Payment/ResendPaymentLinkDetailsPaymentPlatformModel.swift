

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ResendPaymentLinkDetails
        Used By: Payment
    */

    class ResendPaymentLinkDetails: Codable {
        
        
        public var statusCode: Int
        
        public var message: String
        
        public var pollingTimeout: Int?
        
        public var success: Bool
        
        public var error: PaymentLinkError?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case message = "message"
            
            case pollingTimeout = "polling_timeout"
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: PaymentLinkError? = nil, message: String, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.message = message
            
            self.pollingTimeout = pollingTimeout
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(PaymentLinkError.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ResendPaymentLinkDetails
        Used By: Payment
    */

    class ResendPaymentLinkDetails: Codable {
        
        
        public var statusCode: Int
        
        public var message: String
        
        public var pollingTimeout: Int?
        
        public var success: Bool
        
        public var error: PaymentLinkError?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case message = "message"
            
            case pollingTimeout = "polling_timeout"
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: PaymentLinkError? = nil, message: String, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.message = message
            
            self.pollingTimeout = pollingTimeout
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(PaymentLinkError.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



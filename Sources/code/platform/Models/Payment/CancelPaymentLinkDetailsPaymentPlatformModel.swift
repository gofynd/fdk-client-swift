

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CancelPaymentLinkDetails
        Used By: Payment
    */

    class CancelPaymentLinkDetails: Codable {
        
        
        public var statusCode: Int
        
        public var message: String
        
        public var success: Bool
        
        public var error: PaymentLinkError?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case message = "message"
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: PaymentLinkError? = nil, message: String, statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.message = message
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CancelPaymentLinkDetails
        Used By: Payment
    */

    class CancelPaymentLinkDetails: Codable {
        
        
        public var statusCode: Int
        
        public var message: String
        
        public var success: Bool
        
        public var error: PaymentLinkError?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case message = "message"
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: PaymentLinkError? = nil, message: String, statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.message = message
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



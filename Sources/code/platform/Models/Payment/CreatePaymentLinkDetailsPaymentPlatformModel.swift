

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CreatePaymentLinkDetails
        Used By: Payment
    */

    class CreatePaymentLinkDetails: Codable {
        
        
        public var message: String
        
        public var statusCode: Int
        
        public var paymentLinkUrl: String?
        
        public var pollingTimeout: Int?
        
        public var success: Bool
        
        public var paymentLinkId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case statusCode = "status_code"
            
            case paymentLinkUrl = "payment_link_url"
            
            case pollingTimeout = "polling_timeout"
            
            case success = "success"
            
            case paymentLinkId = "payment_link_id"
            
        }

        public init(message: String, paymentLinkId: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.message = message
            
            self.statusCode = statusCode
            
            self.paymentLinkUrl = paymentLinkUrl
            
            self.pollingTimeout = pollingTimeout
            
            self.success = success
            
            self.paymentLinkId = paymentLinkId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                do {
                    paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)
            
            
            
            
            try? container.encodeIfPresent(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CreatePaymentLinkDetails
        Used By: Payment
    */

    class CreatePaymentLinkDetails: Codable {
        
        
        public var message: String
        
        public var statusCode: Int
        
        public var paymentLinkUrl: String?
        
        public var pollingTimeout: Int?
        
        public var success: Bool
        
        public var paymentLinkId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case statusCode = "status_code"
            
            case paymentLinkUrl = "payment_link_url"
            
            case pollingTimeout = "polling_timeout"
            
            case success = "success"
            
            case paymentLinkId = "payment_link_id"
            
        }

        public init(message: String, paymentLinkId: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.message = message
            
            self.statusCode = statusCode
            
            self.paymentLinkUrl = paymentLinkUrl
            
            self.pollingTimeout = pollingTimeout
            
            self.success = success
            
            self.paymentLinkId = paymentLinkId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                do {
                    paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)
            
            
            
            
            try? container.encodeIfPresent(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)
            
            
        }
        
    }
}



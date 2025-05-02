

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: GetPaymentLinkResponse
        Used By: Payment
    */

    class GetPaymentLinkResponse: Codable {
        
        
        public var message: String
        
        public var statusCode: Int
        
        public var amount: Double?
        
        public var merchantName: String?
        
        public var paymentLinkUrl: String?
        
        public var paymentLinkCurrentStatus: String?
        
        public var externalOrderId: String?
        
        public var pollingTimeout: Int?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case statusCode = "status_code"
            
            case amount = "amount"
            
            case merchantName = "merchant_name"
            
            case paymentLinkUrl = "payment_link_url"
            
            case paymentLinkCurrentStatus = "payment_link_current_status"
            
            case externalOrderId = "external_order_id"
            
            case pollingTimeout = "polling_timeout"
            
            case success = "success"
            
        }

        public init(amount: Double? = nil, externalOrderId: String? = nil, merchantName: String? = nil, message: String, paymentLinkCurrentStatus: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.message = message
            
            self.statusCode = statusCode
            
            self.amount = amount
            
            self.merchantName = merchantName
            
            self.paymentLinkUrl = paymentLinkUrl
            
            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus
            
            self.externalOrderId = externalOrderId
            
            self.pollingTimeout = pollingTimeout
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantName = try container.decode(String.self, forKey: .merchantName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
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
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(merchantName, forKey: .merchantName)
            
            
            
            
            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)
            
            
            
            
            try? container.encodeIfPresent(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: GetPaymentLinkResponse
        Used By: Payment
    */

    class GetPaymentLinkResponse: Codable {
        
        
        public var message: String
        
        public var statusCode: Int
        
        public var amount: Double?
        
        public var merchantName: String?
        
        public var paymentLinkUrl: String?
        
        public var paymentLinkCurrentStatus: String?
        
        public var externalOrderId: String?
        
        public var pollingTimeout: Int?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case statusCode = "status_code"
            
            case amount = "amount"
            
            case merchantName = "merchant_name"
            
            case paymentLinkUrl = "payment_link_url"
            
            case paymentLinkCurrentStatus = "payment_link_current_status"
            
            case externalOrderId = "external_order_id"
            
            case pollingTimeout = "polling_timeout"
            
            case success = "success"
            
        }

        public init(amount: Double? = nil, externalOrderId: String? = nil, merchantName: String? = nil, message: String, paymentLinkCurrentStatus: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.message = message
            
            self.statusCode = statusCode
            
            self.amount = amount
            
            self.merchantName = merchantName
            
            self.paymentLinkUrl = paymentLinkUrl
            
            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus
            
            self.externalOrderId = externalOrderId
            
            self.pollingTimeout = pollingTimeout
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantName = try container.decode(String.self, forKey: .merchantName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
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
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(merchantName, forKey: .merchantName)
            
            
            
            
            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)
            
            
            
            
            try? container.encodeIfPresent(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



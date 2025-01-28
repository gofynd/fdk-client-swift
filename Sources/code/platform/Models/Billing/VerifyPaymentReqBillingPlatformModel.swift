

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: VerifyPaymentReq
        Used By: Billing
    */

    class VerifyPaymentReq: Codable {
        
        
        public var razorpayPaymentId: String?
        
        public var razorpayOrderId: String?
        
        public var razorpaySignature: String?
        
        public var statusCode: Int?
        
        public var providerType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case razorpayOrderId = "razorpay_order_id"
            
            case razorpaySignature = "razorpay_signature"
            
            case statusCode = "status_code"
            
            case providerType = "provider_type"
            
        }

        public init(providerType: String? = nil, razorpayOrderId: String? = nil, razorpayPaymentId: String? = nil, razorpaySignature: String? = nil, statusCode: Int? = nil) {
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.razorpayOrderId = razorpayOrderId
            
            self.razorpaySignature = razorpaySignature
            
            self.statusCode = statusCode
            
            self.providerType = providerType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    razorpayOrderId = try container.decode(String.self, forKey: .razorpayOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    razorpaySignature = try container.decode(String.self, forKey: .razorpaySignature)
                
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
                
            
            
                do {
                    providerType = try container.decode(String.self, forKey: .providerType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            
            try? container.encodeIfPresent(razorpayOrderId, forKey: .razorpayOrderId)
            
            
            
            
            try? container.encodeIfPresent(razorpaySignature, forKey: .razorpaySignature)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(providerType, forKey: .providerType)
            
            
        }
        
    }
}







import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentMethodsMetaOrder
        Used By: Payment
    */
    class PaymentMethodsMetaOrder: Codable {
        
        public var merchantCode: String?
        
        public var paymentGateway: String
        
        public var paymentIdentifier: String?
        
        public var logoUrl: PaymentModeLogo?
        

        public enum CodingKeys: String, CodingKey {
            
            case merchantCode = "merchant_code"
            
            case paymentGateway = "payment_gateway"
            
            case paymentIdentifier = "payment_identifier"
            
            case logoUrl = "logo_url"
            
        }

        public init(logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, paymentGateway: String, paymentIdentifier: String? = nil) {
            
            self.merchantCode = merchantCode
            
            self.paymentGateway = paymentGateway
            
            self.paymentIdentifier = paymentIdentifier
            
            self.logoUrl = logoUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
            
            
            
            
            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
        }
        
    }
}

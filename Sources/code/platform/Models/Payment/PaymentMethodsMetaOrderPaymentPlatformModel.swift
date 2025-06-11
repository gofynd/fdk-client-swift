

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentMethodsMetaOrder
        Used By: Payment
    */

    class PaymentMethodsMetaOrder: Codable {
        
        
        public var paymentIdentifier: String?
        
        public var merchantCode: String?
        
        public var paymentGateway: String
        
        public var paymentExtraIdentifiers: [String: Any]?
        
        public var logoUrl: PaymentModeLogo?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentIdentifier = "payment_identifier"
            
            case merchantCode = "merchant_code"
            
            case paymentGateway = "payment_gateway"
            
            case paymentExtraIdentifiers = "payment_extra_identifiers"
            
            case logoUrl = "logo_url"
            
        }

        public init(logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, paymentExtraIdentifiers: [String: Any]? = nil, paymentGateway: String, paymentIdentifier: String? = nil) {
            
            self.paymentIdentifier = paymentIdentifier
            
            self.merchantCode = merchantCode
            
            self.paymentGateway = paymentGateway
            
            self.paymentExtraIdentifiers = paymentExtraIdentifiers
            
            self.logoUrl = logoUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
            
            
            
                do {
                    paymentExtraIdentifiers = try container.decode([String: Any].self, forKey: .paymentExtraIdentifiers)
                
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
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(paymentExtraIdentifiers, forKey: .paymentExtraIdentifiers)
            
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentMethodsMetaOrder
        Used By: Payment
    */

    class PaymentMethodsMetaOrder: Codable {
        
        
        public var paymentIdentifier: String?
        
        public var merchantCode: String?
        
        public var paymentGateway: String
        
        public var paymentExtraIdentifiers: [String: Any]?
        
        public var logoUrl: PaymentModeLogo?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentIdentifier = "payment_identifier"
            
            case merchantCode = "merchant_code"
            
            case paymentGateway = "payment_gateway"
            
            case paymentExtraIdentifiers = "payment_extra_identifiers"
            
            case logoUrl = "logo_url"
            
        }

        public init(logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, paymentExtraIdentifiers: [String: Any]? = nil, paymentGateway: String, paymentIdentifier: String? = nil) {
            
            self.paymentIdentifier = paymentIdentifier
            
            self.merchantCode = merchantCode
            
            self.paymentGateway = paymentGateway
            
            self.paymentExtraIdentifiers = paymentExtraIdentifiers
            
            self.logoUrl = logoUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
            
            
            
                do {
                    paymentExtraIdentifiers = try container.decode([String: Any].self, forKey: .paymentExtraIdentifiers)
                
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
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(paymentExtraIdentifiers, forKey: .paymentExtraIdentifiers)
            
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
        }
        
    }
}



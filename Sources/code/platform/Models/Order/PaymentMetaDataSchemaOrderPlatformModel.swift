

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PaymentMetaDataSchema
        Used By: Order
    */

    class PaymentMetaDataSchema: Codable {
        
        
        public var paymentGateway: String?
        
        public var paymentIdentifier: String?
        
        public var logoUrl: PaymentMetaLogoURLSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentGateway = "payment_gateway"
            
            case paymentIdentifier = "payment_identifier"
            
            case logoUrl = "logo_url"
            
        }

        public init(logoUrl: PaymentMetaLogoURLSchema? = nil, paymentGateway: String? = nil, paymentIdentifier: String? = nil) {
            
            self.paymentGateway = paymentGateway
            
            self.paymentIdentifier = paymentIdentifier
            
            self.logoUrl = logoUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logoUrl = try container.decode(PaymentMetaLogoURLSchema.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PaymentMetaDataSchema
        Used By: Order
    */

    class PaymentMetaDataSchema: Codable {
        
        
        public var paymentGateway: String?
        
        public var paymentIdentifier: String?
        
        public var logoUrl: PaymentMetaLogoURLSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentGateway = "payment_gateway"
            
            case paymentIdentifier = "payment_identifier"
            
            case logoUrl = "logo_url"
            
        }

        public init(logoUrl: PaymentMetaLogoURLSchema? = nil, paymentGateway: String? = nil, paymentIdentifier: String? = nil) {
            
            self.paymentGateway = paymentGateway
            
            self.paymentIdentifier = paymentIdentifier
            
            self.logoUrl = logoUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logoUrl = try container.decode(PaymentMetaLogoURLSchema.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
        }
        
    }
}



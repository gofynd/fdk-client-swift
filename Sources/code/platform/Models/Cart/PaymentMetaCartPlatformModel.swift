

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PaymentMeta
        Used By: Cart
    */

    class PaymentMeta: Codable {
        
        
        public var paymentGateway: String?
        
        public var type: String?
        
        public var paymentIdentifier: String?
        
        public var merchantCode: String?
        
        public var paymentSourceBagId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentGateway = "payment_gateway"
            
            case type = "type"
            
            case paymentIdentifier = "payment_identifier"
            
            case merchantCode = "merchant_code"
            
            case paymentSourceBagId = "payment_source_bag_id"
            
        }

        public init(merchantCode: String? = nil, paymentGateway: String? = nil, paymentIdentifier: String? = nil, paymentSourceBagId: [String]? = nil, type: String? = nil) {
            
            self.paymentGateway = paymentGateway
            
            self.type = type
            
            self.paymentIdentifier = paymentIdentifier
            
            self.merchantCode = merchantCode
            
            self.paymentSourceBagId = paymentSourceBagId
            
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentSourceBagId = try container.decode([String].self, forKey: .paymentSourceBagId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encodeIfPresent(paymentSourceBagId, forKey: .paymentSourceBagId)
            
            
        }
        
    }
}



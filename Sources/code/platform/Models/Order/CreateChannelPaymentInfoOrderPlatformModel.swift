

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateChannelPaymentInfo
        Used By: Order
    */

    class CreateChannelPaymentInfo: Codable {
        
        
        public var source: String?
        
        public var paymentMethods: [PaymentMethods]?
        
        public var modeOfPayment: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case paymentMethods = "payment_methods"
            
            case modeOfPayment = "mode_of_payment"
            
        }

        public init(modeOfPayment: String? = nil, paymentMethods: [PaymentMethods]? = nil, source: String? = nil) {
            
            self.source = source
            
            self.paymentMethods = paymentMethods
            
            self.modeOfPayment = modeOfPayment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([PaymentMethods].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateChannelPaymentInfo
        Used By: Order
    */

    class CreateChannelPaymentInfo: Codable {
        
        
        public var source: String?
        
        public var paymentMethods: [PaymentMethods]?
        
        public var modeOfPayment: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case paymentMethods = "payment_methods"
            
            case modeOfPayment = "mode_of_payment"
            
        }

        public init(modeOfPayment: String? = nil, paymentMethods: [PaymentMethods]? = nil, source: String? = nil) {
            
            self.source = source
            
            self.paymentMethods = paymentMethods
            
            self.modeOfPayment = modeOfPayment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([PaymentMethods].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
        }
        
    }
}



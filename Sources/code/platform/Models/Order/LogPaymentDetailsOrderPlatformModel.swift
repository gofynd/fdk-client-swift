

import Foundation


public extension PlatformClient.Order {
    /*
        Model: LogPaymentDetails
        Used By: Order
    */

    class LogPaymentDetails: Codable {
        
        
        public var paymentMode: String?
        
        public var amountPaid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMode = "payment_mode"
            
            case amountPaid = "amount_paid"
            
        }

        public init(amountPaid: String? = nil, paymentMode: String? = nil) {
            
            self.paymentMode = paymentMode
            
            self.amountPaid = amountPaid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(String.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encode(amountPaid, forKey: .amountPaid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: LogPaymentDetails
        Used By: Order
    */

    class LogPaymentDetails: Codable {
        
        
        public var paymentMode: String?
        
        public var amountPaid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMode = "payment_mode"
            
            case amountPaid = "amount_paid"
            
        }

        public init(amountPaid: String? = nil, paymentMode: String? = nil) {
            
            self.paymentMode = paymentMode
            
            self.amountPaid = amountPaid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(String.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encode(amountPaid, forKey: .amountPaid)
            
            
        }
        
    }
}



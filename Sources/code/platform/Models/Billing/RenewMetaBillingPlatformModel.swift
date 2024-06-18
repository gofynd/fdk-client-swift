

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: RenewMeta
        Used By: Billing
    */

    class RenewMeta: Codable {
        
        
        public var invoicePayment: Bool?
        
        public var renew: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoicePayment = "invoice_payment"
            
            case renew = "renew"
            
        }

        public init(invoicePayment: Bool? = nil, renew: Bool? = nil) {
            
            self.invoicePayment = invoicePayment
            
            self.renew = renew
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoicePayment = try container.decode(Bool.self, forKey: .invoicePayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    renew = try container.decode(Bool.self, forKey: .renew)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoicePayment, forKey: .invoicePayment)
            
            
            
            
            try? container.encodeIfPresent(renew, forKey: .renew)
            
            
        }
        
    }
}







import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoiceBillingItem
        Used By: Finance
    */

    class InvoiceBillingItem: Codable {
        
        
        public var invoiceNumber: String?
        
        public var amount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceNumber = "invoice_number"
            
            case amount = "amount"
            
        }

        public init(amount: Double? = nil, invoiceNumber: String? = nil) {
            
            self.invoiceNumber = invoiceNumber
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoiceNumber = try container.decode(String.self, forKey: .invoiceNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}





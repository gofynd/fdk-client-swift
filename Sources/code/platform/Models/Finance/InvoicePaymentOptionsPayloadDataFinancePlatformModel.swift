

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoicePaymentOptionsPayloadData
        Used By: Finance
    */

    class InvoicePaymentOptionsPayloadData: Codable {
        
        
        public var invoiceNumbers: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceNumbers = "invoice_numbers"
            
        }

        public init(invoiceNumbers: [String]? = nil) {
            
            self.invoiceNumbers = invoiceNumbers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoiceNumbers = try container.decode([String].self, forKey: .invoiceNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceNumbers, forKey: .invoiceNumbers)
            
            
        }
        
    }
}





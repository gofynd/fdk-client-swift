

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoicePaymentOptionsPayloadData
        Used By: Finance
    */

    class InvoicePaymentOptionsPayloadData: Codable {
        
        
        public var invoiceNumber: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceNumber = "invoice_number"
            
        }

        public init(invoiceNumber: String? = nil) {
            
            self.invoiceNumber = invoiceNumber
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)
            
            
        }
        
    }
}







import Foundation


public extension PlatformClient.Billing {
    /*
        Model: TransactionMeta
        Used By: Billing
    */

    class TransactionMeta: Codable {
        
        
        public var invoiceId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceId = "invoice_id"
            
        }

        public init(invoiceId: String? = nil) {
            
            self.invoiceId = invoiceId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
        }
        
    }
}





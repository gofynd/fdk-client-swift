

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoicePaymentOptionsResponsePayableAmounts
        Used By: Finance
    */

    class InvoicePaymentOptionsResponsePayableAmounts: Codable {
        
        
        public var amount: Double?
        
        public var amountKey: String?
        
        public var header: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case amountKey = "amount_key"
            
            case header = "header"
            
        }

        public init(amount: Double? = nil, amountKey: String? = nil, header: String? = nil) {
            
            self.amount = amount
            
            self.amountKey = amountKey
            
            self.header = header
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountKey = try container.decode(String.self, forKey: .amountKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    header = try container.decode(String.self, forKey: .header)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(amountKey, forKey: .amountKey)
            
            
            
            
            try? container.encodeIfPresent(header, forKey: .header)
            
            
        }
        
    }
}





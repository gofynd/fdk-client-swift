

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoicePaymentOptionsResponseDeductedAmounts
        Used By: Finance
    */

    class InvoicePaymentOptionsResponseDeductedAmounts: Codable {
        
        
        public var amount: Double?
        
        public var header: String?
        
        public var amountKey: String?
        
        public var isPayable: Bool?
        
        public var symbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case header = "header"
            
            case amountKey = "amount_key"
            
            case isPayable = "is_payable"
            
            case symbol = "symbol"
            
        }

        public init(amount: Double? = nil, amountKey: String? = nil, header: String? = nil, isPayable: Bool? = nil, symbol: String? = nil) {
            
            self.amount = amount
            
            self.header = header
            
            self.amountKey = amountKey
            
            self.isPayable = isPayable
            
            self.symbol = symbol
            
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
                    header = try container.decode(String.self, forKey: .header)
                
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
                    isPayable = try container.decode(Bool.self, forKey: .isPayable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    symbol = try container.decode(String.self, forKey: .symbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(header, forKey: .header)
            
            
            
            
            try? container.encodeIfPresent(amountKey, forKey: .amountKey)
            
            
            
            
            try? container.encodeIfPresent(isPayable, forKey: .isPayable)
            
            
            
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
            
        }
        
    }
}





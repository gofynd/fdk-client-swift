

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoicePaymentOptionsResponseData
        Used By: Finance
    */

    class InvoicePaymentOptionsResponseData: Codable {
        
        
        public var invoiceNumber: String?
        
        public var invoiceType: String?
        
        public var displayAmounts: [InvoicePaymentOptionsResponsePayableAmounts]?
        
        public var totalAmount: [String: Any]?
        
        public var deductedAmounts: [String: Any]?
        
        public var payableAmounts: [InvoicePaymentOptionsResponsePayableAmounts]?
        
        public var currency: Currency?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceNumber = "invoice_number"
            
            case invoiceType = "invoice_type"
            
            case displayAmounts = "display_amounts"
            
            case totalAmount = "total_amount"
            
            case deductedAmounts = "deducted_amounts"
            
            case payableAmounts = "payable_amounts"
            
            case currency = "currency"
            
        }

        public init(currency: Currency? = nil, deductedAmounts: [String: Any]? = nil, displayAmounts: [InvoicePaymentOptionsResponsePayableAmounts]? = nil, invoiceNumber: String? = nil, invoiceType: String? = nil, payableAmounts: [InvoicePaymentOptionsResponsePayableAmounts]? = nil, totalAmount: [String: Any]? = nil) {
            
            self.invoiceNumber = invoiceNumber
            
            self.invoiceType = invoiceType
            
            self.displayAmounts = displayAmounts
            
            self.totalAmount = totalAmount
            
            self.deductedAmounts = deductedAmounts
            
            self.payableAmounts = payableAmounts
            
            self.currency = currency
            
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
                    invoiceType = try container.decode(String.self, forKey: .invoiceType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayAmounts = try container.decode([InvoicePaymentOptionsResponsePayableAmounts].self, forKey: .displayAmounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalAmount = try container.decode([String: Any].self, forKey: .totalAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deductedAmounts = try container.decode([String: Any].self, forKey: .deductedAmounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payableAmounts = try container.decode([InvoicePaymentOptionsResponsePayableAmounts].self, forKey: .payableAmounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(Currency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)
            
            
            
            
            try? container.encodeIfPresent(invoiceType, forKey: .invoiceType)
            
            
            
            
            try? container.encodeIfPresent(displayAmounts, forKey: .displayAmounts)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(deductedAmounts, forKey: .deductedAmounts)
            
            
            
            
            try? container.encodeIfPresent(payableAmounts, forKey: .payableAmounts)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}





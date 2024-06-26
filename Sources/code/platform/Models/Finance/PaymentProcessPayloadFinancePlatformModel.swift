

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: PaymentProcessPayload
        Used By: Finance
    */

    class PaymentProcessPayload: Codable {
        
        
        public var platform: String?
        
        public var amount: Double?
        
        public var transactionType: String?
        
        public var sourceReference: String?
        
        public var totalAmount: Double?
        
        public var meta: [String: Any]?
        
        public var currency: String?
        
        public var sellerId: String?
        
        public var modeOfPayment: String?
        
        public var invoiceBillingItems: [InvoiceBillingItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case platform = "platform"
            
            case amount = "amount"
            
            case transactionType = "transaction_type"
            
            case sourceReference = "source_reference"
            
            case totalAmount = "total_amount"
            
            case meta = "meta"
            
            case currency = "currency"
            
            case sellerId = "seller_id"
            
            case modeOfPayment = "mode_of_payment"
            
            case invoiceBillingItems = "invoice_billing_items"
            
        }

        public init(amount: Double? = nil, currency: String? = nil, invoiceBillingItems: [InvoiceBillingItem]? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, platform: String? = nil, sellerId: String? = nil, sourceReference: String? = nil, totalAmount: Double? = nil, transactionType: String? = nil) {
            
            self.platform = platform
            
            self.amount = amount
            
            self.transactionType = transactionType
            
            self.sourceReference = sourceReference
            
            self.totalAmount = totalAmount
            
            self.meta = meta
            
            self.currency = currency
            
            self.sellerId = sellerId
            
            self.modeOfPayment = modeOfPayment
            
            self.invoiceBillingItems = invoiceBillingItems
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
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
                
            
            
                do {
                    transactionType = try container.decode(String.self, forKey: .transactionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sourceReference = try container.decode(String.self, forKey: .sourceReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalAmount = try container.decode(Double.self, forKey: .totalAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(String.self, forKey: .sellerId)
                
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
                
            
            
                do {
                    invoiceBillingItems = try container.decode([InvoiceBillingItem].self, forKey: .invoiceBillingItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(sourceReference, forKey: .sourceReference)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(invoiceBillingItems, forKey: .invoiceBillingItems)
            
            
        }
        
    }
}





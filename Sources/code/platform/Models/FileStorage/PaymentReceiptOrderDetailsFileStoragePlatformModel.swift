

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PaymentReceiptOrderDetails
        Used By: FileStorage
    */

    class PaymentReceiptOrderDetails: Codable {
        
        
        public var jiomartOrderId: String?
        
        public var totalItems: Double?
        
        public var finalAmount: Double?
        
        public var finalAmountInWords: String?
        
        public var orderCreatedDate: String?
        
        public var orderCreatedTime: String?
        
        public var prmId: String?
        
        public var receiptNo: String?
        
        public var taxes: PaymentReceiptTaxes?
        

        public enum CodingKeys: String, CodingKey {
            
            case jiomartOrderId = "jiomart_order_id"
            
            case totalItems = "total_items"
            
            case finalAmount = "final_amount"
            
            case finalAmountInWords = "final_amount_in_words"
            
            case orderCreatedDate = "order_created_date"
            
            case orderCreatedTime = "order_created_time"
            
            case prmId = "prm_id"
            
            case receiptNo = "receipt_no"
            
            case taxes = "taxes"
            
        }

        public init(finalAmount: Double? = nil, finalAmountInWords: String? = nil, jiomartOrderId: String? = nil, orderCreatedDate: String? = nil, orderCreatedTime: String? = nil, prmId: String? = nil, receiptNo: String? = nil, taxes: PaymentReceiptTaxes? = nil, totalItems: Double? = nil) {
            
            self.jiomartOrderId = jiomartOrderId
            
            self.totalItems = totalItems
            
            self.finalAmount = finalAmount
            
            self.finalAmountInWords = finalAmountInWords
            
            self.orderCreatedDate = orderCreatedDate
            
            self.orderCreatedTime = orderCreatedTime
            
            self.prmId = prmId
            
            self.receiptNo = receiptNo
            
            self.taxes = taxes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    jiomartOrderId = try container.decode(String.self, forKey: .jiomartOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalItems = try container.decode(Double.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finalAmount = try container.decode(Double.self, forKey: .finalAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finalAmountInWords = try container.decode(String.self, forKey: .finalAmountInWords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedDate = try container.decode(String.self, forKey: .orderCreatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prmId = try container.decode(String.self, forKey: .prmId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiptNo = try container.decode(String.self, forKey: .receiptNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxes = try container.decode(PaymentReceiptTaxes.self, forKey: .taxes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jiomartOrderId, forKey: .jiomartOrderId)
            
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(finalAmount, forKey: .finalAmount)
            
            
            
            
            try? container.encodeIfPresent(finalAmountInWords, forKey: .finalAmountInWords)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedDate, forKey: .orderCreatedDate)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            
            try? container.encodeIfPresent(prmId, forKey: .prmId)
            
            
            
            
            try? container.encodeIfPresent(receiptNo, forKey: .receiptNo)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PaymentReceiptOrderDetails
        Used By: FileStorage
    */

    class PaymentReceiptOrderDetails: Codable {
        
        
        public var jiomartOrderId: String?
        
        public var totalItems: Double?
        
        public var finalAmount: Double?
        
        public var finalAmountInWords: String?
        
        public var orderCreatedDate: String?
        
        public var orderCreatedTime: String?
        
        public var prmId: String?
        
        public var receiptNo: String?
        
        public var taxes: PaymentReceiptTaxes?
        

        public enum CodingKeys: String, CodingKey {
            
            case jiomartOrderId = "jiomart_order_id"
            
            case totalItems = "total_items"
            
            case finalAmount = "final_amount"
            
            case finalAmountInWords = "final_amount_in_words"
            
            case orderCreatedDate = "order_created_date"
            
            case orderCreatedTime = "order_created_time"
            
            case prmId = "prm_id"
            
            case receiptNo = "receipt_no"
            
            case taxes = "taxes"
            
        }

        public init(finalAmount: Double? = nil, finalAmountInWords: String? = nil, jiomartOrderId: String? = nil, orderCreatedDate: String? = nil, orderCreatedTime: String? = nil, prmId: String? = nil, receiptNo: String? = nil, taxes: PaymentReceiptTaxes? = nil, totalItems: Double? = nil) {
            
            self.jiomartOrderId = jiomartOrderId
            
            self.totalItems = totalItems
            
            self.finalAmount = finalAmount
            
            self.finalAmountInWords = finalAmountInWords
            
            self.orderCreatedDate = orderCreatedDate
            
            self.orderCreatedTime = orderCreatedTime
            
            self.prmId = prmId
            
            self.receiptNo = receiptNo
            
            self.taxes = taxes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    jiomartOrderId = try container.decode(String.self, forKey: .jiomartOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalItems = try container.decode(Double.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finalAmount = try container.decode(Double.self, forKey: .finalAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finalAmountInWords = try container.decode(String.self, forKey: .finalAmountInWords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedDate = try container.decode(String.self, forKey: .orderCreatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prmId = try container.decode(String.self, forKey: .prmId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiptNo = try container.decode(String.self, forKey: .receiptNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxes = try container.decode(PaymentReceiptTaxes.self, forKey: .taxes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jiomartOrderId, forKey: .jiomartOrderId)
            
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(finalAmount, forKey: .finalAmount)
            
            
            
            
            try? container.encodeIfPresent(finalAmountInWords, forKey: .finalAmountInWords)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedDate, forKey: .orderCreatedDate)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            
            try? container.encodeIfPresent(prmId, forKey: .prmId)
            
            
            
            
            try? container.encodeIfPresent(receiptNo, forKey: .receiptNo)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
        }
        
    }
}



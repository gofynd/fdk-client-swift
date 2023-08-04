

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSessionDetail
        Used By: Payment
    */

    class RefundSessionDetail: Codable {
        
        
        public var refundUtr: String?
        
        public var receiptNumber: String?
        
        public var balanceTransaction: String?
        
        public var paymentId: String
        
        public var created: String
        
        public var requestId: String
        
        public var transferReversal: String?
        
        public var amount: Int
        
        public var status: String
        
        public var sourceTransferReversal: String?
        
        public var currency: String
        
        public var reason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundUtr = "refund_utr"
            
            case receiptNumber = "receipt_number"
            
            case balanceTransaction = "balance_transaction"
            
            case paymentId = "payment_id"
            
            case created = "created"
            
            case requestId = "request_id"
            
            case transferReversal = "transfer_reversal"
            
            case amount = "amount"
            
            case status = "status"
            
            case sourceTransferReversal = "source_transfer_reversal"
            
            case currency = "currency"
            
            case reason = "reason"
            
        }

        public init(amount: Int, balanceTransaction: String? = nil, created: String, currency: String, paymentId: String, reason: String? = nil, receiptNumber: String? = nil, refundUtr: String? = nil, requestId: String, sourceTransferReversal: String? = nil, status: String, transferReversal: String? = nil) {
            
            self.refundUtr = refundUtr
            
            self.receiptNumber = receiptNumber
            
            self.balanceTransaction = balanceTransaction
            
            self.paymentId = paymentId
            
            self.created = created
            
            self.requestId = requestId
            
            self.transferReversal = transferReversal
            
            self.amount = amount
            
            self.status = status
            
            self.sourceTransferReversal = sourceTransferReversal
            
            self.currency = currency
            
            self.reason = reason
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundUtr = try container.decode(String.self, forKey: .refundUtr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiptNumber = try container.decode(String.self, forKey: .receiptNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    balanceTransaction = try container.decode(String.self, forKey: .balanceTransaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentId = try container.decode(String.self, forKey: .paymentId)
                
            
            
            
                created = try container.decode(String.self, forKey: .created)
                
            
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                do {
                    transferReversal = try container.decode(String.self, forKey: .transferReversal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    sourceTransferReversal = try container.decode(String.self, forKey: .sourceTransferReversal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundUtr, forKey: .refundUtr)
            
            
            
            
            try? container.encodeIfPresent(receiptNumber, forKey: .receiptNumber)
            
            
            
            
            try? container.encodeIfPresent(balanceTransaction, forKey: .balanceTransaction)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(transferReversal, forKey: .transferReversal)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(sourceTransferReversal, forKey: .sourceTransferReversal)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundSessionDetail
        Used By: Payment
    */

    class RefundSessionDetail: Codable {
        
        
        public var refundUtr: String?
        
        public var receiptNumber: String?
        
        public var balanceTransaction: String?
        
        public var paymentId: String
        
        public var created: String
        
        public var requestId: String
        
        public var transferReversal: String?
        
        public var amount: Int
        
        public var status: String
        
        public var sourceTransferReversal: String?
        
        public var currency: String
        
        public var reason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundUtr = "refund_utr"
            
            case receiptNumber = "receipt_number"
            
            case balanceTransaction = "balance_transaction"
            
            case paymentId = "payment_id"
            
            case created = "created"
            
            case requestId = "request_id"
            
            case transferReversal = "transfer_reversal"
            
            case amount = "amount"
            
            case status = "status"
            
            case sourceTransferReversal = "source_transfer_reversal"
            
            case currency = "currency"
            
            case reason = "reason"
            
        }

        public init(amount: Int, balanceTransaction: String? = nil, created: String, currency: String, paymentId: String, reason: String? = nil, receiptNumber: String? = nil, refundUtr: String? = nil, requestId: String, sourceTransferReversal: String? = nil, status: String, transferReversal: String? = nil) {
            
            self.refundUtr = refundUtr
            
            self.receiptNumber = receiptNumber
            
            self.balanceTransaction = balanceTransaction
            
            self.paymentId = paymentId
            
            self.created = created
            
            self.requestId = requestId
            
            self.transferReversal = transferReversal
            
            self.amount = amount
            
            self.status = status
            
            self.sourceTransferReversal = sourceTransferReversal
            
            self.currency = currency
            
            self.reason = reason
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundUtr = try container.decode(String.self, forKey: .refundUtr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiptNumber = try container.decode(String.self, forKey: .receiptNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    balanceTransaction = try container.decode(String.self, forKey: .balanceTransaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentId = try container.decode(String.self, forKey: .paymentId)
                
            
            
            
                created = try container.decode(String.self, forKey: .created)
                
            
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                do {
                    transferReversal = try container.decode(String.self, forKey: .transferReversal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    sourceTransferReversal = try container.decode(String.self, forKey: .sourceTransferReversal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundUtr, forKey: .refundUtr)
            
            
            
            
            try? container.encodeIfPresent(receiptNumber, forKey: .receiptNumber)
            
            
            
            
            try? container.encodeIfPresent(balanceTransaction, forKey: .balanceTransaction)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(transferReversal, forKey: .transferReversal)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(sourceTransferReversal, forKey: .sourceTransferReversal)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}



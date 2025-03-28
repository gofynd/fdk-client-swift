

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSessionDetail
        Used By: Payment
    */

    class RefundSessionDetail: Codable {
        
        
        public var refundUtr: String?
        
        public var requestId: String
        
        public var paymentId: String
        
        public var amount: Int
        
        public var reason: String?
        
        public var status: String
        
        public var created: String
        
        public var sourceTransferReversal: String?
        
        public var currency: String
        
        public var transferReversal: String?
        
        public var balanceTransaction: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundUtr = "refund_utr"
            
            case requestId = "request_id"
            
            case paymentId = "payment_id"
            
            case amount = "amount"
            
            case reason = "reason"
            
            case status = "status"
            
            case created = "created"
            
            case sourceTransferReversal = "source_transfer_reversal"
            
            case currency = "currency"
            
            case transferReversal = "transfer_reversal"
            
            case balanceTransaction = "balance_transaction"
            
        }

        public init(amount: Int, balanceTransaction: String? = nil, created: String, currency: String, paymentId: String, reason: String? = nil, refundUtr: String? = nil, requestId: String, sourceTransferReversal: String? = nil, status: String, transferReversal: String? = nil) {
            
            self.refundUtr = refundUtr
            
            self.requestId = requestId
            
            self.paymentId = paymentId
            
            self.amount = amount
            
            self.reason = reason
            
            self.status = status
            
            self.created = created
            
            self.sourceTransferReversal = sourceTransferReversal
            
            self.currency = currency
            
            self.transferReversal = transferReversal
            
            self.balanceTransaction = balanceTransaction
            
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
                
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                paymentId = try container.decode(String.self, forKey: .paymentId)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                created = try container.decode(String.self, forKey: .created)
                
            
            
            
                do {
                    sourceTransferReversal = try container.decode(String.self, forKey: .sourceTransferReversal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    transferReversal = try container.decode(String.self, forKey: .transferReversal)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundUtr, forKey: .refundUtr)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(sourceTransferReversal, forKey: .sourceTransferReversal)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(transferReversal, forKey: .transferReversal)
            
            
            
            
            try? container.encodeIfPresent(balanceTransaction, forKey: .balanceTransaction)
            
            
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
        
        public var requestId: String
        
        public var paymentId: String
        
        public var amount: Int
        
        public var reason: String?
        
        public var status: String
        
        public var created: String
        
        public var sourceTransferReversal: String?
        
        public var currency: String
        
        public var transferReversal: String?
        
        public var balanceTransaction: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundUtr = "refund_utr"
            
            case requestId = "request_id"
            
            case paymentId = "payment_id"
            
            case amount = "amount"
            
            case reason = "reason"
            
            case status = "status"
            
            case created = "created"
            
            case sourceTransferReversal = "source_transfer_reversal"
            
            case currency = "currency"
            
            case transferReversal = "transfer_reversal"
            
            case balanceTransaction = "balance_transaction"
            
        }

        public init(amount: Int, balanceTransaction: String? = nil, created: String, currency: String, paymentId: String, reason: String? = nil, refundUtr: String? = nil, requestId: String, sourceTransferReversal: String? = nil, status: String, transferReversal: String? = nil) {
            
            self.refundUtr = refundUtr
            
            self.requestId = requestId
            
            self.paymentId = paymentId
            
            self.amount = amount
            
            self.reason = reason
            
            self.status = status
            
            self.created = created
            
            self.sourceTransferReversal = sourceTransferReversal
            
            self.currency = currency
            
            self.transferReversal = transferReversal
            
            self.balanceTransaction = balanceTransaction
            
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
                
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                paymentId = try container.decode(String.self, forKey: .paymentId)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                created = try container.decode(String.self, forKey: .created)
                
            
            
            
                do {
                    sourceTransferReversal = try container.decode(String.self, forKey: .sourceTransferReversal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    transferReversal = try container.decode(String.self, forKey: .transferReversal)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundUtr, forKey: .refundUtr)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(sourceTransferReversal, forKey: .sourceTransferReversal)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(transferReversal, forKey: .transferReversal)
            
            
            
            
            try? container.encodeIfPresent(balanceTransaction, forKey: .balanceTransaction)
            
            
        }
        
    }
}



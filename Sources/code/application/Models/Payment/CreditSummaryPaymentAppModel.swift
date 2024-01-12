

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CreditSummary
        Used By: Payment
    */
    class CreditSummary: Codable {
        
        public var totalDueAmount: BalanceDetails?
        
        public var status: String?
        
        public var limit: BalanceDetails?
        
        public var creditLineId: String?
        
        public var amountAvailable: BalanceDetails?
        
        public var dueAmount: BalanceDetails?
        
        public var dueDate: String?
        
        public var balance: BalanceDetails?
        
        public var statusMessage: String?
        
        public var repaymentUrl: String?
        
        public var soaUrl: String?
        
        public var isEligibleForTxn: Bool?
        
        public var merchantCustomerRefId: String?
        
        public var buyerStatus: String?
        
        public var activationUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalDueAmount = "total_due_amount"
            
            case status = "status"
            
            case limit = "limit"
            
            case creditLineId = "credit_line_id"
            
            case amountAvailable = "amount_available"
            
            case dueAmount = "due_amount"
            
            case dueDate = "due_date"
            
            case balance = "balance"
            
            case statusMessage = "status_message"
            
            case repaymentUrl = "repayment_url"
            
            case soaUrl = "soa_url"
            
            case isEligibleForTxn = "is_eligible_for_txn"
            
            case merchantCustomerRefId = "merchant_customer_ref_id"
            
            case buyerStatus = "buyer_status"
            
            case activationUrl = "activation_url"
            
        }

        public init(activationUrl: String? = nil, amountAvailable: BalanceDetails? = nil, balance: BalanceDetails? = nil, buyerStatus: String? = nil, creditLineId: String? = nil, dueAmount: BalanceDetails? = nil, dueDate: String? = nil, isEligibleForTxn: Bool? = nil, limit: BalanceDetails? = nil, merchantCustomerRefId: String? = nil, repaymentUrl: String? = nil, soaUrl: String? = nil, status: String? = nil, statusMessage: String? = nil, totalDueAmount: BalanceDetails? = nil) {
            
            self.totalDueAmount = totalDueAmount
            
            self.status = status
            
            self.limit = limit
            
            self.creditLineId = creditLineId
            
            self.amountAvailable = amountAvailable
            
            self.dueAmount = dueAmount
            
            self.dueDate = dueDate
            
            self.balance = balance
            
            self.statusMessage = statusMessage
            
            self.repaymentUrl = repaymentUrl
            
            self.soaUrl = soaUrl
            
            self.isEligibleForTxn = isEligibleForTxn
            
            self.merchantCustomerRefId = merchantCustomerRefId
            
            self.buyerStatus = buyerStatus
            
            self.activationUrl = activationUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                totalDueAmount = try container.decode(BalanceDetails.self, forKey: .totalDueAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                limit = try container.decode(BalanceDetails.self, forKey: .limit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                creditLineId = try container.decode(String.self, forKey: .creditLineId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                amountAvailable = try container.decode(BalanceDetails.self, forKey: .amountAvailable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dueAmount = try container.decode(BalanceDetails.self, forKey: .dueAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                balance = try container.decode(BalanceDetails.self, forKey: .balance)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                statusMessage = try container.decode(String.self, forKey: .statusMessage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                repaymentUrl = try container.decode(String.self, forKey: .repaymentUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                soaUrl = try container.decode(String.self, forKey: .soaUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isEligibleForTxn = try container.decode(Bool.self, forKey: .isEligibleForTxn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                buyerStatus = try container.decode(String.self, forKey: .buyerStatus)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                activationUrl = try container.decode(String.self, forKey: .activationUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(totalDueAmount, forKey: .totalDueAmount)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)
            
            
            
            try? container.encodeIfPresent(amountAvailable, forKey: .amountAvailable)
            
            
            
            try? container.encodeIfPresent(dueAmount, forKey: .dueAmount)
            
            
            
            try? container.encodeIfPresent(dueDate, forKey: .dueDate)
            
            
            
            try? container.encodeIfPresent(balance, forKey: .balance)
            
            
            
            try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)
            
            
            
            try? container.encodeIfPresent(repaymentUrl, forKey: .repaymentUrl)
            
            
            
            try? container.encodeIfPresent(soaUrl, forKey: .soaUrl)
            
            
            
            try? container.encodeIfPresent(isEligibleForTxn, forKey: .isEligibleForTxn)
            
            
            
            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)
            
            
            
            try? container.encodeIfPresent(buyerStatus, forKey: .buyerStatus)
            
            
            
            try? container.encodeIfPresent(activationUrl, forKey: .activationUrl)
            
            
        }
        
    }
}

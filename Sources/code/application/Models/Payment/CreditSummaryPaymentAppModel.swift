

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CreditSummary
        Used By: Payment
    */
    class CreditSummary: Codable {
        
        public var status: String?
        
        public var creditLineId: String?
        
        public var amountAvailable: BalanceDetails?
        
        public var balance: BalanceDetails?
        
        public var statusMessage: String?
        
        public var merchantCustomerRefId: String?
        
        public var buyerStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case creditLineId = "credit_line_id"
            
            case amountAvailable = "amount_available"
            
            case balance = "balance"
            
            case statusMessage = "status_message"
            
            case merchantCustomerRefId = "merchant_customer_ref_id"
            
            case buyerStatus = "buyer_status"
            
        }

        public init(amountAvailable: BalanceDetails? = nil, balance: BalanceDetails? = nil, buyerStatus: String? = nil, creditLineId: String? = nil, merchantCustomerRefId: String? = nil, status: String? = nil, statusMessage: String? = nil) {
            
            self.status = status
            
            self.creditLineId = creditLineId
            
            self.amountAvailable = amountAvailable
            
            self.balance = balance
            
            self.statusMessage = statusMessage
            
            self.merchantCustomerRefId = merchantCustomerRefId
            
            self.buyerStatus = buyerStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)
            
            
            
            try? container.encodeIfPresent(amountAvailable, forKey: .amountAvailable)
            
            
            
            try? container.encodeIfPresent(balance, forKey: .balance)
            
            
            
            try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)
            
            
            
            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)
            
            
            
            try? container.encodeIfPresent(buyerStatus, forKey: .buyerStatus)
            
            
        }
        
    }
}

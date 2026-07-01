

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: OrderTransactionItem
        Used By: Payment
    */
    class OrderTransactionItem: Codable {
        
        public var transactionId: String?
        
        public var paymentMode: String?
        
        public var logo: String?
        
        public var amount: Double?
        
        public var status: String?
        
        public var createdOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case transactionId = "transaction_id"
            
            case paymentMode = "payment_mode"
            
            case logo = "logo"
            
            case amount = "amount"
            
            case status = "status"
            
            case createdOn = "created_on"
            
        }

        public init(amount: Double? = nil, createdOn: String? = nil, logo: String? = nil, paymentMode: String? = nil, status: String? = nil, transactionId: String? = nil) {
            
            self.transactionId = transactionId
            
            self.paymentMode = paymentMode
            
            self.logo = logo
            
            self.amount = amount
            
            self.status = status
            
            self.createdOn = createdOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logo = try container.decode(String.self, forKey: .logo)
            
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
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
        }
        
    }
}

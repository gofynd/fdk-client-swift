

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateCustomerData
        Used By: Payment
    */
    class ValidateCustomerData: Codable {
        
        public var approved: Bool?
        
        public var buttonText: String?
        
        public var firstTransaction: Bool?
        
        public var message: String?
        
        public var amount: Int?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case approved = "approved"
            
            case buttonText = "button_text"
            
            case firstTransaction = "first_transaction"
            
            case message = "message"
            
            case amount = "amount"
            
            case userId = "user_id"
            
        }

        public init(amount: Int? = nil, approved: Bool? = nil, buttonText: String? = nil, firstTransaction: Bool? = nil, message: String? = nil, userId: String? = nil) {
            
            self.approved = approved
            
            self.buttonText = buttonText
            
            self.firstTransaction = firstTransaction
            
            self.message = message
            
            self.amount = amount
            
            self.userId = userId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                approved = try container.decode(Bool.self, forKey: .approved)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                buttonText = try container.decode(String.self, forKey: .buttonText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                firstTransaction = try container.decode(Bool.self, forKey: .firstTransaction)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                amount = try container.decode(Int.self, forKey: .amount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userId = try container.decode(String.self, forKey: .userId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(approved, forKey: .approved)
            
            
            
            try? container.encodeIfPresent(buttonText, forKey: .buttonText)
            
            
            
            try? container.encodeIfPresent(firstTransaction, forKey: .firstTransaction)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
        }
        
    }
}

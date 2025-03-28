

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: Account
        Used By: Payment
    */
    class Account: Codable {
        
        public var type: String?
        
        public var routingNumber: String?
        
        public var accountNumber: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case routingNumber = "routing_number"
            
            case accountNumber = "account_number"
            
        }

        public init(accountNumber: String? = nil, routingNumber: String? = nil, type: String? = nil) {
            
            self.type = type
            
            self.routingNumber = routingNumber
            
            self.accountNumber = accountNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                routingNumber = try container.decode(String.self, forKey: .routingNumber)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                accountNumber = try container.decode(String.self, forKey: .accountNumber)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(routingNumber, forKey: .routingNumber)
            
            
            
            try? container.encodeIfPresent(accountNumber, forKey: .accountNumber)
            
            
        }
        
    }
}

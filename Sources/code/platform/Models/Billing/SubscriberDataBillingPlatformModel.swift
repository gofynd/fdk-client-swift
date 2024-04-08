

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriberData
        Used By: Billing
    */

    class SubscriberData: Codable {
        
        
        public var pgUserExists: Bool?
        
        public var id: [String: Any]?
        
        public var pgCustomerId: String?
        
        public var defaultPaymentMethod: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pgUserExists = "pg_user_exists"
            
            case id = "id"
            
            case pgCustomerId = "pg_customer_id"
            
            case defaultPaymentMethod = "default_payment_method"
            
        }

        public init(defaultPaymentMethod: String? = nil, id: [String: Any]? = nil, pgCustomerId: String? = nil, pgUserExists: Bool? = nil) {
            
            self.pgUserExists = pgUserExists
            
            self.id = id
            
            self.pgCustomerId = pgCustomerId
            
            self.defaultPaymentMethod = defaultPaymentMethod
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pgUserExists = try container.decode(Bool.self, forKey: .pgUserExists)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode([String: Any].self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pgCustomerId = try container.decode(String.self, forKey: .pgCustomerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultPaymentMethod = try container.decode(String.self, forKey: .defaultPaymentMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pgUserExists, forKey: .pgUserExists)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pgCustomerId, forKey: .pgCustomerId)
            
            
            
            
            try? container.encodeIfPresent(defaultPaymentMethod, forKey: .defaultPaymentMethod)
            
            
        }
        
    }
}





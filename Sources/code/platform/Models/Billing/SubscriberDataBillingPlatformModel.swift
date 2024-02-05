

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriberData
        Used By: Billing
    */

    class SubscriberData: Codable {
        
        
        public var pgUserExists: Bool?
        
        public var id: String?
        
        public var pgCustomerId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pgUserExists = "pg_user_exists"
            
            case id = "id"
            
            case pgCustomerId = "pg_customer_id"
            
        }

        public init(id: String? = nil, pgCustomerId: String? = nil, pgUserExists: Bool? = nil) {
            
            self.pgUserExists = pgUserExists
            
            self.id = id
            
            self.pgCustomerId = pgCustomerId
            
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
                    id = try container.decode(String.self, forKey: .id)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pgUserExists, forKey: .pgUserExists)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pgCustomerId, forKey: .pgCustomerId)
            
            
        }
        
    }
}





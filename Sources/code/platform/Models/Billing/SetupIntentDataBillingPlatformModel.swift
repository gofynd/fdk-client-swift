

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SetupIntentData
        Used By: Billing
    */

    class SetupIntentData: Codable {
        
        
        public var id: String?
        
        public var clientSecret: String?
        
        public var customer: String?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case clientSecret = "client_secret"
            
            case customer = "customer"
            
            case status = "status"
            
        }

        public init(clientSecret: String? = nil, customer: String? = nil, id: String? = nil, status: String? = nil) {
            
            self.id = id
            
            self.clientSecret = clientSecret
            
            self.customer = customer
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    clientSecret = try container.decode(String.self, forKey: .clientSecret)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customer = try container.decode(String.self, forKey: .customer)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(clientSecret, forKey: .clientSecret)
            
            
            
            
            try? container.encodeIfPresent(customer, forKey: .customer)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}





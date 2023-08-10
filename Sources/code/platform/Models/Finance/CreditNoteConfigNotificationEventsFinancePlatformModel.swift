

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: CreditNoteConfigNotificationEvents
        Used By: Finance
    */

    class CreditNoteConfigNotificationEvents: Codable {
        
        
        public var expirationReminderToCustomer: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case expirationReminderToCustomer = "expiration_reminder_to_customer"
            
        }

        public init(expirationReminderToCustomer: Int? = nil) {
            
            self.expirationReminderToCustomer = expirationReminderToCustomer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    expirationReminderToCustomer = try container.decode(Int.self, forKey: .expirationReminderToCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(expirationReminderToCustomer, forKey: .expirationReminderToCustomer)
            
            
        }
        
    }
}





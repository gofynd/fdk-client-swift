

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: EndingBalance
        Used By: Billing
    */

    class EndingBalance: Codable {
        
        
        public var amount: Int?
        
        public var oldEntryRef: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case oldEntryRef = "old_entry_ref"
            
        }

        public init(amount: Int? = nil, oldEntryRef: String? = nil) {
            
            self.amount = amount
            
            self.oldEntryRef = oldEntryRef
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    oldEntryRef = try container.decode(String.self, forKey: .oldEntryRef)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(oldEntryRef, forKey: .oldEntryRef)
            
            
        }
        
    }
}





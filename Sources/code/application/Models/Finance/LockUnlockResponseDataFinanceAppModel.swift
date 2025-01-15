

import Foundation
public extension ApplicationClient.Finance {
    /*
        Model: LockUnlockResponseData
        Used By: Finance
    */
    class LockUnlockResponseData: Codable {
        
        public var creditNoteNumber: String?
        
        public var amount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case creditNoteNumber = "credit_note_number"
            
            case amount = "amount"
            
        }

        public init(amount: Double? = nil, creditNoteNumber: String? = nil) {
            
            self.creditNoteNumber = creditNoteNumber
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                creditNoteNumber = try container.decode(String.self, forKey: .creditNoteNumber)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(creditNoteNumber, forKey: .creditNoteNumber)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}

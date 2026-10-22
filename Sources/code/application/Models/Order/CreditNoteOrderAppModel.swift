

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: CreditNote
        Used By: Order
    */
    class CreditNote: Codable {
        
        public var creditNoteId: String?
        
        public var creditNoteUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case creditNoteId = "credit_note_id"
            
            case creditNoteUrl = "credit_note_url"
            
        }

        public init(creditNoteId: String? = nil, creditNoteUrl: String? = nil) {
            
            self.creditNoteId = creditNoteId
            
            self.creditNoteUrl = creditNoteUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                creditNoteUrl = try container.decode(String.self, forKey: .creditNoteUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)
            
            
            
            try? container.encodeIfPresent(creditNoteUrl, forKey: .creditNoteUrl)
            
            
        }
        
    }
}

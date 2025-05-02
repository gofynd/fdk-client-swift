

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: UnlockCreditNoteRequestData
        Used By: Finance
    */

    class UnlockCreditNoteRequestData: Codable {
        
        
        public var sellerId: String?
        
        public var lockedCreditNotes: [String]?
        
        public var unlockReason: String?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
            case lockedCreditNotes = "locked_credit_notes"
            
            case unlockReason = "unlock_reason"
            
            case description = "description"
            
        }

        public init(description: String? = nil, lockedCreditNotes: [String]? = nil, sellerId: String? = nil, unlockReason: String? = nil) {
            
            self.sellerId = sellerId
            
            self.lockedCreditNotes = lockedCreditNotes
            
            self.unlockReason = unlockReason
            
            self.description = description
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerId = try container.decode(String.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockedCreditNotes = try container.decode([String].self, forKey: .lockedCreditNotes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unlockReason = try container.decode(String.self, forKey: .unlockReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(lockedCreditNotes, forKey: .lockedCreditNotes)
            
            
            
            
            try? container.encodeIfPresent(unlockReason, forKey: .unlockReason)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
}





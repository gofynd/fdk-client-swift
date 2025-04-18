

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: UnlockCreditNoteResponseData
        Used By: Finance
    */

    class UnlockCreditNoteResponseData: Codable {
        
        
        public var isCnUnlocked: Bool?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isCnUnlocked = "is_cn_unlocked"
            
            case status = "status"
            
        }

        public init(isCnUnlocked: Bool? = nil, status: String? = nil) {
            
            self.isCnUnlocked = isCnUnlocked
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isCnUnlocked = try container.decode(Bool.self, forKey: .isCnUnlocked)
                
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
            
            
            
            try? container.encodeIfPresent(isCnUnlocked, forKey: .isCnUnlocked)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}





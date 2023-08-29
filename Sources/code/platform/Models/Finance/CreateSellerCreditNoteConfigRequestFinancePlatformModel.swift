

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: CreateSellerCreditNoteConfigRequest
        Used By: Finance
    */

    class CreateSellerCreditNoteConfigRequest: Codable {
        
        
        public var data: CreateSellerCreditNoteConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: CreateSellerCreditNoteConfig? = nil) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(CreateSellerCreditNoteConfig.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}





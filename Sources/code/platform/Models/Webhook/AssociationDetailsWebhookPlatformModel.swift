

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: AssociationDetails
        Used By: Webhook
    */

    class AssociationDetails: Codable {
        
        
        public var companyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
        }

        public init(companyId: Int? = nil) {
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}





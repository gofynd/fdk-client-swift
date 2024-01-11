

import Foundation
public extension PublicClient.Webhook {
    /*
        Model: TransformEventAssociation
        Used By: Webhook
    */

    class TransformEventAssociation: Codable {
        
        
        public var companyId: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
        }

        public init(companyId: Double? = nil) {
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
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

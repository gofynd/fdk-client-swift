

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: CnReferenceNumber
        Used By: Finance
    */

    class CnReferenceNumber: Codable {
        
        
        public var cnReferenceNumber: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cnReferenceNumber = "cn_reference_number"
            
        }

        public init(cnReferenceNumber: String? = nil) {
            
            self.cnReferenceNumber = cnReferenceNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cnReferenceNumber = try container.decode(String.self, forKey: .cnReferenceNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cnReferenceNumber, forKey: .cnReferenceNumber)
            
            
        }
        
    }
}





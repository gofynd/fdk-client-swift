

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Author
        Used By: Billing
    */

    class Author: Codable {
        
        
        public var modifiedByDetails: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedByDetails = "modified_by_details"
            
        }

        public init(modifiedByDetails: [String: Any]? = nil) {
            
            self.modifiedByDetails = modifiedByDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedByDetails = try container.decode([String: Any].self, forKey: .modifiedByDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(modifiedByDetails, forKey: .modifiedByDetails)
            
            
        }
        
    }
}





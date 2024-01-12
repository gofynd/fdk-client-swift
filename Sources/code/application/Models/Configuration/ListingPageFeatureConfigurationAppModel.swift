

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: ListingPageFeature
        Used By: Configuration
    */
    class ListingPageFeature: Codable {
        
        public var sortOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sortOn = "sort_on"
            
        }

        public init(sortOn: String? = nil) {
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
        }
        
    }
}

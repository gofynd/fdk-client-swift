

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: SetSizeDistribution
        Used By: Logistic
    */
    class SetSizeDistribution: Codable {
        
        public var sizes: [SetSizeItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
        }

        public init(sizes: [SetSizeItem]? = nil) {
            
            self.sizes = sizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                sizes = try container.decode([SetSizeItem].self, forKey: .sizes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}

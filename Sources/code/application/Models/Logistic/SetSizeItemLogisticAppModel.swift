

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: SetSizeItem
        Used By: Logistic
    */
    class SetSizeItem: Codable {
        
        public var pieces: Int?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pieces = "pieces"
            
            case size = "size"
            
        }

        public init(pieces: Int? = nil, size: String? = nil) {
            
            self.pieces = pieces
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                pieces = try container.decode(Int.self, forKey: .pieces)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                size = try container.decode(String.self, forKey: .size)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(pieces, forKey: .pieces)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}

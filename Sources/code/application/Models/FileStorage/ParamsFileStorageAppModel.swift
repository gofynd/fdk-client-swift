

import Foundation
public extension ApplicationClient.FileStorage {
    /*
        Model: Params
        Used By: FileStorage
    */
    class Params: Codable {
        
        public var subpath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case subpath = "subpath"
            
        }

        public init(subpath: String? = nil) {
            
            self.subpath = subpath
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                subpath = try container.decode(String.self, forKey: .subpath)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(subpath, forKey: .subpath)
            
            
        }
        
    }
}

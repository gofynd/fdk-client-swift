

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ErrorResponseServiceability
        Used By: Catalog
    */
    class ErrorResponseServiceability: Codable {
        
        public var error: String?
        
        public var isServiceable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case isServiceable = "is_serviceable"
            
        }

        public init(error: String? = nil, isServiceable: Bool? = nil) {
            
            self.error = error
            
            self.isServiceable = isServiceable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                error = try container.decode(String.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isServiceable = try container.decode(Bool.self, forKey: .isServiceable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(isServiceable, forKey: .isServiceable)
            
            
        }
        
    }
}

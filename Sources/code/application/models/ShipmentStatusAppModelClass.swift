

import Foundation
public extension ApplicationClient {
    /*
        Model: ShipmentStatus
        Used By: Order
    */
    class ShipmentStatus: Codable {
        
        public var hexCode: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case hexCode = "hex_code"
            
            case title = "title"
            
        }

        public init(hexCode: String? = nil, title: String? = nil) {
            
            self.hexCode = hexCode
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                hexCode = try container.decode(String.self, forKey: .hexCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                title = try container.decode(String.self, forKey: .title)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hexCode, forKey: .hexCode)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}

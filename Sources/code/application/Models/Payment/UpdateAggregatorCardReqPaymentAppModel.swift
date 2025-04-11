

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: UpdateAggregatorCardReq
        Used By: Payment
    */
    class UpdateAggregatorCardReq: Codable {
        
        public var refresh: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case refresh = "refresh"
            
        }

        public init(refresh: Bool? = nil) {
            
            self.refresh = refresh
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                refresh = try container.decode(Bool.self, forKey: .refresh)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(refresh, forKey: .refresh)
            
            
        }
        
    }
}

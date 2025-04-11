

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: Affiliate
        Used By: Payment
    */
    class Affiliate: Codable {
        
        public var id: String?
        
        public var token: String?
        
        public var config: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case token = "token"
            
            case config = "config"
            
        }

        public init(config: [String: Any]? = nil, id: String? = nil, token: String? = nil) {
            
            self.id = id
            
            self.token = token
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                token = try container.decode(String.self, forKey: .token)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                config = try container.decode([String: Any].self, forKey: .config)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}

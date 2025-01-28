

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: SDKDetails
        Used By: Payment
    */
    class SDKDetails: Codable {
        
        public var config: SDKConfig?
        
        public var data: UserData?
        

        public enum CodingKeys: String, CodingKey {
            
            case config = "config"
            
            case data = "data"
            
        }

        public init(config: SDKConfig? = nil, data: UserData? = nil) {
            
            self.config = config
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                config = try container.decode(SDKConfig.self, forKey: .config)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                data = try container.decode(UserData.self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}

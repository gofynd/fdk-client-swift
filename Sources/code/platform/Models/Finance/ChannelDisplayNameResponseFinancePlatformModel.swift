

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: ChannelDisplayNameResponse
        Used By: Finance
    */

    class ChannelDisplayNameResponse: Codable {
        
        
        public var success: Bool?
        
        public var items: [ChannelDisplayNameItems]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case items = "items"
            
        }

        public init(items: [ChannelDisplayNameItems]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([ChannelDisplayNameItems].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}





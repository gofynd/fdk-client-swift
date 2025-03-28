

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: FeedbackResponseItem
        Used By: Lead
    */

    class FeedbackResponseItem: Codable {
        
        
        public var display: String
        
        public var key: String
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case key = "key"
            
        }

        public init(display: String, key: String) {
            
            self.display = display
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: FeedbackResponseItem
        Used By: Lead
    */

    class FeedbackResponseItem: Codable {
        
        
        public var display: String
        
        public var key: String
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case key = "key"
            
        }

        public init(display: String, key: String) {
            
            self.display = display
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Order {
    /*
        Model: TransitionComments
        Used By: Order
    */

    class TransitionComments: Codable {
        
        
        public var title: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case message = "message"
            
        }

        public init(message: String, title: String) {
            
            self.title = title
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TransitionComments
        Used By: Order
    */

    class TransitionComments: Codable {
        
        
        public var title: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case message = "message"
            
        }

        public init(message: String, title: String) {
            
            self.title = title
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



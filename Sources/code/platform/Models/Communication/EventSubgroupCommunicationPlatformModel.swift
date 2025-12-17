

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventSubgroup
        Used By: Communication
    */

    class EventSubgroup: Codable {
        
        
        public var name: String
        
        public var display: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
        }

        public init(display: String, name: String) {
            
            self.name = name
            
            self.display = display
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventSubgroup
        Used By: Communication
    */

    class EventSubgroup: Codable {
        
        
        public var name: String
        
        public var display: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
        }

        public init(display: String, name: String) {
            
            self.name = name
            
            self.display = display
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
        }
        
    }
}



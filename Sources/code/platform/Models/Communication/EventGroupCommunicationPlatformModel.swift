

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventGroup
        Used By: Communication
    */

    class EventGroup: Codable {
        
        
        public var name: String
        
        public var display: String
        
        public var subgroups: [EventSubgroup]
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
            case subgroups = "subgroups"
            
        }

        public init(display: String, name: String, subgroups: [EventSubgroup]) {
            
            self.name = name
            
            self.display = display
            
            self.subgroups = subgroups
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
            
                subgroups = try container.decode([EventSubgroup].self, forKey: .subgroups)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(subgroups, forKey: .subgroups)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventGroup
        Used By: Communication
    */

    class EventGroup: Codable {
        
        
        public var name: String
        
        public var display: String
        
        public var subgroups: [EventSubgroup]
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
            case subgroups = "subgroups"
            
        }

        public init(display: String, name: String, subgroups: [EventSubgroup]) {
            
            self.name = name
            
            self.display = display
            
            self.subgroups = subgroups
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
            
                subgroups = try container.decode([EventSubgroup].self, forKey: .subgroups)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(subgroups, forKey: .subgroups)
            
            
        }
        
    }
}



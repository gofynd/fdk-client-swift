

import Foundation


public extension PlatformClient.Order {
    /*
        Model: QuestionSetItem
        Used By: Order
    */

    class QuestionSetItem: Codable {
        
        
        public var id: Int
        
        public var displayName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String, id: Int) {
            
            self.id = id
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: QuestionSetItem
        Used By: Order
    */

    class QuestionSetItem: Codable {
        
        
        public var id: Int
        
        public var displayName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String, id: Int) {
            
            self.id = id
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



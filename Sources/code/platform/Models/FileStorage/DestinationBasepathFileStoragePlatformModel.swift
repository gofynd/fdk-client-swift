

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: DestinationBasepath
        Used By: FileStorage
    */

    class DestinationBasepath: Codable {
        
        
        public var basepath: String
        
        public var rewrite: String
        

        public enum CodingKeys: String, CodingKey {
            
            case basepath = "basepath"
            
            case rewrite = "rewrite"
            
        }

        public init(basepath: String, rewrite: String) {
            
            self.basepath = basepath
            
            self.rewrite = rewrite
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                basepath = try container.decode(String.self, forKey: .basepath)
                
            
            
            
                rewrite = try container.decode(String.self, forKey: .rewrite)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(basepath, forKey: .basepath)
            
            
            
            
            try? container.encodeIfPresent(rewrite, forKey: .rewrite)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: DestinationBasepath
        Used By: FileStorage
    */

    class DestinationBasepath: Codable {
        
        
        public var basepath: String
        
        public var rewrite: String
        

        public enum CodingKeys: String, CodingKey {
            
            case basepath = "basepath"
            
            case rewrite = "rewrite"
            
        }

        public init(basepath: String, rewrite: String) {
            
            self.basepath = basepath
            
            self.rewrite = rewrite
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                basepath = try container.decode(String.self, forKey: .basepath)
                
            
            
            
                rewrite = try container.decode(String.self, forKey: .rewrite)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(basepath, forKey: .basepath)
            
            
            
            
            try? container.encodeIfPresent(rewrite, forKey: .rewrite)
            
            
        }
        
    }
}



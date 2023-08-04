

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: File
        Used By: FileStorage
    */

    class File: Codable {
        
        
        public var src: FileSrc
        

        public enum CodingKeys: String, CodingKey {
            
            case src = "src"
            
        }

        public init(src: FileSrc) {
            
            self.src = src
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                src = try container.decode(FileSrc.self, forKey: .src)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: File
        Used By: FileStorage
    */

    class File: Codable {
        
        
        public var src: FileSrc
        

        public enum CodingKeys: String, CodingKey {
            
            case src = "src"
            
        }

        public init(src: FileSrc) {
            
            self.src = src
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                src = try container.decode(FileSrc.self, forKey: .src)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            
        }
        
    }
}



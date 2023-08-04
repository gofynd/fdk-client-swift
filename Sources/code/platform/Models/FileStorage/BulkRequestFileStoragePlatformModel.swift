

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: BulkRequest
        Used By: FileStorage
    */

    class BulkRequest: Codable {
        
        
        public var urls: [String]
        
        public var destination: Destination
        

        public enum CodingKeys: String, CodingKey {
            
            case urls = "urls"
            
            case destination = "destination"
            
        }

        public init(destination: Destination, urls: [String]) {
            
            self.urls = urls
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                urls = try container.decode([String].self, forKey: .urls)
                
            
            
            
                destination = try container.decode(Destination.self, forKey: .destination)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(urls, forKey: .urls)
            
            
            
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: BulkRequest
        Used By: FileStorage
    */

    class BulkRequest: Codable {
        
        
        public var urls: [String]
        
        public var destination: Destination
        

        public enum CodingKeys: String, CodingKey {
            
            case urls = "urls"
            
            case destination = "destination"
            
        }

        public init(destination: Destination, urls: [String]) {
            
            self.urls = urls
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                urls = try container.decode([String].self, forKey: .urls)
                
            
            
            
                destination = try container.decode(Destination.self, forKey: .destination)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(urls, forKey: .urls)
            
            
            
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            
        }
        
    }
}



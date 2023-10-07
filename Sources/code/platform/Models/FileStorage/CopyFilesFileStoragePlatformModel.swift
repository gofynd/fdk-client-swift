

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: CopyFiles
        Used By: FileStorage
    */

    class CopyFiles: Codable {
        
        
        public var urls: [String]?
        
        public var destination: DestinationNamespace
        

        public enum CodingKeys: String, CodingKey {
            
            case urls = "urls"
            
            case destination = "destination"
            
        }

        public init(destination: DestinationNamespace, urls: [String]? = nil) {
            
            self.urls = urls
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    urls = try container.decode([String].self, forKey: .urls)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                destination = try container.decode(DestinationNamespace.self, forKey: .destination)
                
            
            
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
        Model: CopyFiles
        Used By: FileStorage
    */

    class CopyFiles: Codable {
        
        
        public var urls: [String]?
        
        public var destination: DestinationNamespace
        

        public enum CodingKeys: String, CodingKey {
            
            case urls = "urls"
            
            case destination = "destination"
            
        }

        public init(destination: DestinationNamespace, urls: [String]? = nil) {
            
            self.urls = urls
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    urls = try container.decode([String].self, forKey: .urls)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                destination = try container.decode(DestinationNamespace.self, forKey: .destination)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(urls, forKey: .urls)
            
            
            
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            
        }
        
    }
}



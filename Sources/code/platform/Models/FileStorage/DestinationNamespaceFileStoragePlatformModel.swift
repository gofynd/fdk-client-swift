

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: DestinationNamespace
        Used By: FileStorage
    */

    class DestinationNamespace: Codable {
        
        
        public var namespace: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case namespace = "namespace"
            
        }

        public init(namespace: String? = nil) {
            
            self.namespace = namespace
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    namespace = try container.decode(String.self, forKey: .namespace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: DestinationNamespace
        Used By: FileStorage
    */

    class DestinationNamespace: Codable {
        
        
        public var namespace: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case namespace = "namespace"
            
        }

        public init(namespace: String? = nil) {
            
            self.namespace = namespace
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    namespace = try container.decode(String.self, forKey: .namespace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
        }
        
    }
}



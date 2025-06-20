

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FileResponseSchema
        Used By: Order
    */

    class FileResponseSchema: Codable {
        
        
        public var fileName: String?
        
        public var cdn: URL?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case cdn = "cdn"
            
        }

        public init(cdn: URL? = nil, fileName: String? = nil) {
            
            self.fileName = fileName
            
            self.cdn = cdn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fileName = try container.decode(String.self, forKey: .fileName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cdn = try container.decode(URL.self, forKey: .cdn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FileResponseSchema
        Used By: Order
    */

    class FileResponseSchema: Codable {
        
        
        public var fileName: String?
        
        public var cdn: URL?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case cdn = "cdn"
            
        }

        public init(cdn: URL? = nil, fileName: String? = nil) {
            
            self.fileName = fileName
            
            self.cdn = cdn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fileName = try container.decode(String.self, forKey: .fileName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cdn = try container.decode(URL.self, forKey: .cdn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
            
        }
        
    }
}



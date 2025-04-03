

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TemplateDownloadResponse
        Used By: Order
    */

    class TemplateDownloadResponse: Codable {
        
        
        public var fileName: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case url = "url"
            
        }

        public init(fileName: String? = nil, url: String? = nil) {
            
            self.fileName = fileName
            
            self.url = url
            
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
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TemplateDownloadResponse
        Used By: Order
    */

    class TemplateDownloadResponse: Codable {
        
        
        public var fileName: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case url = "url"
            
        }

        public init(fileName: String? = nil, url: String? = nil) {
            
            self.fileName = fileName
            
            self.url = url
            
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
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}



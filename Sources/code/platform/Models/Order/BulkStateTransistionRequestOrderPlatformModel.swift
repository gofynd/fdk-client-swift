

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BulkStateTransistionRequest
        Used By: Order
    */

    class BulkStateTransistionRequest: Codable {
        
        
        public var url: String?
        
        public var fileName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case fileName = "file_name"
            
        }

        public init(fileName: String? = nil, url: String? = nil) {
            
            self.url = url
            
            self.fileName = fileName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileName = try container.decode(String.self, forKey: .fileName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BulkStateTransistionRequest
        Used By: Order
    */

    class BulkStateTransistionRequest: Codable {
        
        
        public var url: String?
        
        public var fileName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case fileName = "file_name"
            
        }

        public init(fileName: String? = nil, url: String? = nil) {
            
            self.url = url
            
            self.fileName = fileName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileName = try container.decode(String.self, forKey: .fileName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
        }
        
    }
}



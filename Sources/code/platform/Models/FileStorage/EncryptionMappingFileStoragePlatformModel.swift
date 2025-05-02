

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: EncryptionMapping
        Used By: FileStorage
    */

    class EncryptionMapping: Codable {
        
        
        public var encUrl: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case encUrl = "enc_url"
            
            case value = "value"
            
        }

        public init(encUrl: String? = nil, value: String? = nil) {
            
            self.encUrl = encUrl
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    encUrl = try container.decode(String.self, forKey: .encUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(encUrl, forKey: .encUrl)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: EncryptionMapping
        Used By: FileStorage
    */

    class EncryptionMapping: Codable {
        
        
        public var encUrl: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case encUrl = "enc_url"
            
            case value = "value"
            
        }

        public init(encUrl: String? = nil, value: String? = nil) {
            
            self.encUrl = encUrl
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    encUrl = try container.decode(String.self, forKey: .encUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(encUrl, forKey: .encUrl)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



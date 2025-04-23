

import Foundation
public extension ApplicationClient.FileStorage {
    /*
        Model: SignUrlRequest
        Used By: FileStorage
    */
    class SignUrlRequest: Codable {
        
        public var expiry: Int
        
        public var urls: [String]
        
        public var encUrlMapping: [EncryptionMapping]?
        

        public enum CodingKeys: String, CodingKey {
            
            case expiry = "expiry"
            
            case urls = "urls"
            
            case encUrlMapping = "enc_url_mapping"
            
        }

        public init(encUrlMapping: [EncryptionMapping]? = nil, expiry: Int, urls: [String]) {
            
            self.expiry = expiry
            
            self.urls = urls
            
            self.encUrlMapping = encUrlMapping
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            expiry = try container.decode(Int.self, forKey: .expiry)
            
            
            
            
            urls = try container.decode([String].self, forKey: .urls)
            
            
            
            
            do {
                encUrlMapping = try container.decode([EncryptionMapping].self, forKey: .encUrlMapping)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
            
            
            try? container.encodeIfPresent(urls, forKey: .urls)
            
            
            
            try? container.encodeIfPresent(encUrlMapping, forKey: .encUrlMapping)
            
            
        }
        
    }
}

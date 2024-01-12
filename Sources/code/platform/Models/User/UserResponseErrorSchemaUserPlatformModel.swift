

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserResponseErrorSchema
        Used By: User
    */

    class UserResponseErrorSchema: Codable {
        
        
        public var count: Int?
        
        public var fileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case fileUrl = "file_url"
            
        }

        public init(count: Int? = nil, fileUrl: String? = nil) {
            
            self.count = count
            
            self.fileUrl = fileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
        }
        
    }
}





import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkActionLinkSchema
        Used By: User
    */

    class BulkActionLinkSchema: Codable {
        
        
        public var file: FileLinks?
        
        public var error: FileLinks?
        

        public enum CodingKeys: String, CodingKey {
            
            case file = "file"
            
            case error = "error"
            
        }

        public init(error: FileLinks? = nil, file: FileLinks? = nil) {
            
            self.file = file
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    file = try container.decode(FileLinks.self, forKey: .file)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(FileLinks.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(file, forKey: .file)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}





import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkUserExportSchema
        Used By: User
    */

    class BulkUserExportSchema: Codable {
        
        
        public var fileFormat: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fileFormat = "file_format"
            
        }

        public init(fileFormat: String) {
            
            self.fileFormat = fileFormat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fileFormat = try container.decode(String.self, forKey: .fileFormat)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileFormat, forKey: .fileFormat)
            
            
        }
        
    }
}



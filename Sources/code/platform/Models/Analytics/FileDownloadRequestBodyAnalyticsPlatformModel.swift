

import Foundation




public extension PlatformClient.ApplicationClient.Analytics {
    /*
        Model: FileDownloadRequestBody
        Used By: Analytics
    */

    class FileDownloadRequestBody: Codable {
        
        
        public var query: String
        
        public var splitFiles: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case splitFiles = "split_files"
            
        }

        public init(query: String, splitFiles: Bool? = nil) {
            
            self.query = query
            
            self.splitFiles = splitFiles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                query = try container.decode(String.self, forKey: .query)
                
            
            
            
                do {
                    splitFiles = try container.decode(Bool.self, forKey: .splitFiles)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(splitFiles, forKey: .splitFiles)
            
            
        }
        
    }
}



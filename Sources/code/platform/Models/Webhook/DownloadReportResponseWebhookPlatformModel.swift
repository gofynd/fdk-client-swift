

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: DownloadReportResponse
        Used By: Webhook
    */

    class DownloadReportResponse: Codable {
        
        
        public var fileName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
        }

        public init(fileName: String? = nil) {
            
            self.fileName = fileName
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
        }
        
    }
}





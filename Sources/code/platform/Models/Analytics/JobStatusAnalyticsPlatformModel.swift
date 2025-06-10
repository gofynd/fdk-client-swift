

import Foundation




public extension PlatformClient.ApplicationClient.Analytics {
    /*
        Model: JobStatus
        Used By: Analytics
    */

    class JobStatus: Codable {
        
        
        public var startDate: String?
        
        public var endDate: String?
        
        public var status: String?
        
        public var message: String?
        
        public var fileMetadata: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case status = "status"
            
            case message = "message"
            
            case fileMetadata = "file_metadata"
            
        }

        public init(endDate: String? = nil, fileMetadata: [[String: Any]]? = nil, message: String? = nil, startDate: String? = nil, status: String? = nil) {
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.status = status
            
            self.message = message
            
            self.fileMetadata = fileMetadata
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileMetadata = try container.decode([[String: Any]].self, forKey: .fileMetadata)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(fileMetadata, forKey: .fileMetadata)
            
            
        }
        
    }
}



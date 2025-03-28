

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectEntryBulkUploadDetails
        Used By: Content
    */

    class CustomObjectEntryBulkUploadDetails: Codable {
        
        
        public var url: String?
        
        public var totalRecords: Int?
        
        public var message: String?
        
        public var taskId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case totalRecords = "total_records"
            
            case message = "message"
            
            case taskId = "task_id"
            
        }

        public init(message: String? = nil, taskId: String? = nil, totalRecords: Int? = nil, url: String? = nil) {
            
            self.url = url
            
            self.totalRecords = totalRecords
            
            self.message = message
            
            self.taskId = taskId
            
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
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
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
                    taskId = try container.decode(String.self, forKey: .taskId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectEntryBulkUploadDetails
        Used By: Content
    */

    class CustomObjectEntryBulkUploadDetails: Codable {
        
        
        public var url: String?
        
        public var totalRecords: Int?
        
        public var message: String?
        
        public var taskId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case totalRecords = "total_records"
            
            case message = "message"
            
            case taskId = "task_id"
            
        }

        public init(message: String? = nil, taskId: String? = nil, totalRecords: Int? = nil, url: String? = nil) {
            
            self.url = url
            
            self.totalRecords = totalRecords
            
            self.message = message
            
            self.taskId = taskId
            
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
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
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
                    taskId = try container.decode(String.self, forKey: .taskId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
        }
        
    }
}



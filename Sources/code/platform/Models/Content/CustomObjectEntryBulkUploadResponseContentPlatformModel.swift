

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectEntryBulkUploadResponse
        Used By: Content
    */

    class CustomObjectEntryBulkUploadResponse: Codable {
        
        
        public var message: String?
        
        public var taskId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case taskId = "task_id"
            
        }

        public init(message: String? = nil, taskId: String? = nil) {
            
            self.message = message
            
            self.taskId = taskId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectEntryBulkUploadResponse
        Used By: Content
    */

    class CustomObjectEntryBulkUploadResponse: Codable {
        
        
        public var message: String?
        
        public var taskId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case taskId = "task_id"
            
        }

        public init(message: String? = nil, taskId: String? = nil) {
            
            self.message = message
            
            self.taskId = taskId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
        }
        
    }
}



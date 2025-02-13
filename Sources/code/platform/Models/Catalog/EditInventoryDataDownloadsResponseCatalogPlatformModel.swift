

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: EditInventoryDataDownloadsResponse
        Used By: Catalog
    */

    class EditInventoryDataDownloadsResponse: Codable {
        
        
        public var url: String?
        
        public var completedOn: String?
        
        public var sellerId: Int?
        
        public var taskId: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var notificationEmails: [String]?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case completedOn = "completed_on"
            
            case sellerId = "seller_id"
            
            case taskId = "task_id"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case notificationEmails = "notification_emails"
            
            case status = "status"
            
        }

        public init(completedOn: String? = nil, createdOn: String? = nil, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int? = nil, status: String? = nil, taskId: String? = nil, url: String? = nil) {
            
            self.url = url
            
            self.completedOn = completedOn
            
            self.sellerId = sellerId
            
            self.taskId = taskId
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.notificationEmails = notificationEmails
            
            self.status = status
            
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
                    completedOn = try container.decode(String.self, forKey: .completedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
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
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: EditInventoryDataDownloadsResponse
        Used By: Catalog
    */

    class EditInventoryDataDownloadsResponse: Codable {
        
        
        public var url: String?
        
        public var completedOn: String?
        
        public var sellerId: Int?
        
        public var taskId: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var notificationEmails: [String]?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case completedOn = "completed_on"
            
            case sellerId = "seller_id"
            
            case taskId = "task_id"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case notificationEmails = "notification_emails"
            
            case status = "status"
            
        }

        public init(completedOn: String? = nil, createdOn: String? = nil, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int? = nil, status: String? = nil, taskId: String? = nil, url: String? = nil) {
            
            self.url = url
            
            self.completedOn = completedOn
            
            self.sellerId = sellerId
            
            self.taskId = taskId
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.notificationEmails = notificationEmails
            
            self.status = status
            
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
                    completedOn = try container.decode(String.self, forKey: .completedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
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
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



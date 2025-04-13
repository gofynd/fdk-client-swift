

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PatchProductDownloadsDataResponse
        Used By: Catalog
    */

    class PatchProductDownloadsDataResponse: Codable {
        
        
        public var createdOn: String?
        
        public var createdBy: CreatedBy?
        
        public var taskId: String?
        
        public var modifiedOn: String?
        
        public var sellerId: Int?
        
        public var url: String?
        
        public var status: String?
        
        public var notificationEmails: [String]?
        
        public var completedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case taskId = "task_id"
            
            case modifiedOn = "modified_on"
            
            case sellerId = "seller_id"
            
            case url = "url"
            
            case status = "status"
            
            case notificationEmails = "notification_emails"
            
            case completedOn = "completed_on"
            
        }

        public init(completedOn: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int? = nil, status: String? = nil, taskId: String? = nil, url: String? = nil) {
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.taskId = taskId
            
            self.modifiedOn = modifiedOn
            
            self.sellerId = sellerId
            
            self.url = url
            
            self.status = status
            
            self.notificationEmails = notificationEmails
            
            self.completedOn = completedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
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
                    url = try container.decode(String.self, forKey: .url)
                
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PatchProductDownloadsDataResponse
        Used By: Catalog
    */

    class PatchProductDownloadsDataResponse: Codable {
        
        
        public var createdOn: String?
        
        public var createdBy: CreatedBy?
        
        public var taskId: String?
        
        public var modifiedOn: String?
        
        public var sellerId: Int?
        
        public var url: String?
        
        public var status: String?
        
        public var notificationEmails: [String]?
        
        public var completedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case taskId = "task_id"
            
            case modifiedOn = "modified_on"
            
            case sellerId = "seller_id"
            
            case url = "url"
            
            case status = "status"
            
            case notificationEmails = "notification_emails"
            
            case completedOn = "completed_on"
            
        }

        public init(completedOn: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int? = nil, status: String? = nil, taskId: String? = nil, url: String? = nil) {
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.taskId = taskId
            
            self.modifiedOn = modifiedOn
            
            self.sellerId = sellerId
            
            self.url = url
            
            self.status = status
            
            self.notificationEmails = notificationEmails
            
            self.completedOn = completedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
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
                    url = try container.decode(String.self, forKey: .url)
                
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
        }
        
    }
}



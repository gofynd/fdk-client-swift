

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportJob
        Used By: Catalog
    */

    class InventoryExportJob: Codable {
        
        
        public var sellerId: Int
        
        public var filters: InventoryExportAdvanceOption?
        
        public var type: String
        
        public var taskId: String
        
        public var status: String?
        
        public var url: String?
        
        public var completedOn: String?
        
        public var notificationEmails: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
            case filters = "filters"
            
            case type = "type"
            
            case taskId = "task_id"
            
            case status = "status"
            
            case url = "url"
            
            case completedOn = "completed_on"
            
            case notificationEmails = "notification_emails"
            
        }

        public init(completedOn: String? = nil, filters: InventoryExportAdvanceOption? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String, url: String? = nil) {
            
            self.sellerId = sellerId
            
            self.filters = filters
            
            self.type = type
            
            self.taskId = taskId
            
            self.status = status
            
            self.url = url
            
            self.completedOn = completedOn
            
            self.notificationEmails = notificationEmails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sellerId = try container.decode(Int.self, forKey: .sellerId)
                
            
            
            
                do {
                    filters = try container.decode(InventoryExportAdvanceOption.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                taskId = try container.decode(String.self, forKey: .taskId)
                
            
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
                    completedOn = try container.decode(String.self, forKey: .completedOn)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportJob
        Used By: Catalog
    */

    class InventoryExportJob: Codable {
        
        
        public var sellerId: Int
        
        public var filters: InventoryExportAdvanceOption?
        
        public var type: String
        
        public var taskId: String
        
        public var status: String?
        
        public var url: String?
        
        public var completedOn: String?
        
        public var notificationEmails: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
            case filters = "filters"
            
            case type = "type"
            
            case taskId = "task_id"
            
            case status = "status"
            
            case url = "url"
            
            case completedOn = "completed_on"
            
            case notificationEmails = "notification_emails"
            
        }

        public init(completedOn: String? = nil, filters: InventoryExportAdvanceOption? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String, url: String? = nil) {
            
            self.sellerId = sellerId
            
            self.filters = filters
            
            self.type = type
            
            self.taskId = taskId
            
            self.status = status
            
            self.url = url
            
            self.completedOn = completedOn
            
            self.notificationEmails = notificationEmails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sellerId = try container.decode(Int.self, forKey: .sellerId)
                
            
            
            
                do {
                    filters = try container.decode(InventoryExportAdvanceOption.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                taskId = try container.decode(String.self, forKey: .taskId)
                
            
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
                    completedOn = try container.decode(String.self, forKey: .completedOn)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
        }
        
    }
}



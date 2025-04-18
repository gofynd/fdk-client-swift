

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportItem
        Used By: Catalog
    */

    class InventoryExportItem: Codable {
        
        
        public var status: String?
        
        public var type: String?
        
        public var stats: [String: Any]?
        
        public var completedOn: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var sellerId: Int?
        
        public var taskId: String?
        
        public var notificationEmails: [String]?
        
        public var createdBy: CreatedBy?
        
        public var id: String?
        
        public var url: String?
        
        public var triggerOn: String?
        
        public var brand: [Int]?
        
        public var store: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case type = "type"
            
            case stats = "stats"
            
            case completedOn = "completed_on"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case sellerId = "seller_id"
            
            case taskId = "task_id"
            
            case notificationEmails = "notification_emails"
            
            case createdBy = "created_by"
            
            case id = "_id"
            
            case url = "url"
            
            case triggerOn = "trigger_on"
            
            case brand = "brand"
            
            case store = "store"
            
        }

        public init(brand: [Int]? = nil, completedOn: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int? = nil, stats: [String: Any]? = nil, status: String? = nil, store: [Int]? = nil, taskId: String? = nil, triggerOn: String? = nil, type: String? = nil, url: String? = nil, id: String? = nil) {
            
            self.status = status
            
            self.type = type
            
            self.stats = stats
            
            self.completedOn = completedOn
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.sellerId = sellerId
            
            self.taskId = taskId
            
            self.notificationEmails = notificationEmails
            
            self.createdBy = createdBy
            
            self.id = id
            
            self.url = url
            
            self.triggerOn = triggerOn
            
            self.brand = brand
            
            self.store = store
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stats = try container.decode([String: Any].self, forKey: .stats)
                
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
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
                    triggerOn = try container.decode(String.self, forKey: .triggerOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode([Int].self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode([Int].self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(stats, forKey: .stats)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportItem
        Used By: Catalog
    */

    class InventoryExportItem: Codable {
        
        
        public var status: String?
        
        public var type: String?
        
        public var stats: [String: Any]?
        
        public var completedOn: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var sellerId: Int?
        
        public var taskId: String?
        
        public var notificationEmails: [String]?
        
        public var createdBy: CreatedBy?
        
        public var id: String?
        
        public var url: String?
        
        public var triggerOn: String?
        
        public var brand: [Int]?
        
        public var store: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case type = "type"
            
            case stats = "stats"
            
            case completedOn = "completed_on"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case sellerId = "seller_id"
            
            case taskId = "task_id"
            
            case notificationEmails = "notification_emails"
            
            case createdBy = "created_by"
            
            case id = "_id"
            
            case url = "url"
            
            case triggerOn = "trigger_on"
            
            case brand = "brand"
            
            case store = "store"
            
        }

        public init(brand: [Int]? = nil, completedOn: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int? = nil, stats: [String: Any]? = nil, status: String? = nil, store: [Int]? = nil, taskId: String? = nil, triggerOn: String? = nil, type: String? = nil, url: String? = nil, id: String? = nil) {
            
            self.status = status
            
            self.type = type
            
            self.stats = stats
            
            self.completedOn = completedOn
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.sellerId = sellerId
            
            self.taskId = taskId
            
            self.notificationEmails = notificationEmails
            
            self.createdBy = createdBy
            
            self.id = id
            
            self.url = url
            
            self.triggerOn = triggerOn
            
            self.brand = brand
            
            self.store = store
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stats = try container.decode([String: Any].self, forKey: .stats)
                
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
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
                    triggerOn = try container.decode(String.self, forKey: .triggerOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode([Int].self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode([Int].self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(stats, forKey: .stats)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
        }
        
    }
}



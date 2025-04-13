

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportResponse
        Used By: Catalog
    */

    class InventoryExportResponse: Codable {
        
        
        public var createdBy: CreatedBy?
        
        public var createdOn: String?
        
        public var filters: InventoryExportFiltersResponse?
        
        public var modifiedOn: String?
        
        public var notificationEmails: [String]?
        
        public var sellerId: Int
        
        public var status: String?
        
        public var taskId: String
        
        public var type: String?
        
        public var stats: Stats?
        
        public var id: String?
        
        public var triggerOn: String?
        
        public var brand: [Int]?
        
        public var store: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case filters = "filters"
            
            case modifiedOn = "modified_on"
            
            case notificationEmails = "notification_emails"
            
            case sellerId = "seller_id"
            
            case status = "status"
            
            case taskId = "task_id"
            
            case type = "type"
            
            case stats = "stats"
            
            case id = "_id"
            
            case triggerOn = "trigger_on"
            
            case brand = "brand"
            
            case store = "store"
            
        }

        public init(brand: [Int]? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, filters: InventoryExportFiltersResponse? = nil, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, stats: Stats? = nil, status: String? = nil, store: [Int]? = nil, taskId: String, triggerOn: String? = nil, type: String? = nil, id: String? = nil) {
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.filters = filters
            
            self.modifiedOn = modifiedOn
            
            self.notificationEmails = notificationEmails
            
            self.sellerId = sellerId
            
            self.status = status
            
            self.taskId = taskId
            
            self.type = type
            
            self.stats = stats
            
            self.id = id
            
            self.triggerOn = triggerOn
            
            self.brand = brand
            
            self.store = store
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    filters = try container.decode(InventoryExportFiltersResponse.self, forKey: .filters)
                
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
                
            
            
                sellerId = try container.decode(Int.self, forKey: .sellerId)
                
            
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taskId = try container.decode(String.self, forKey: .taskId)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stats = try container.decode(Stats.self, forKey: .stats)
                
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
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(stats, forKey: .stats)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportResponse
        Used By: Catalog
    */

    class InventoryExportResponse: Codable {
        
        
        public var createdBy: CreatedBy?
        
        public var createdOn: String?
        
        public var filters: InventoryExportFiltersResponse?
        
        public var modifiedOn: String?
        
        public var notificationEmails: [String]?
        
        public var sellerId: Int
        
        public var status: String?
        
        public var taskId: String
        
        public var type: String?
        
        public var stats: Stats?
        
        public var id: String?
        
        public var triggerOn: String?
        
        public var brand: [Int]?
        
        public var store: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case filters = "filters"
            
            case modifiedOn = "modified_on"
            
            case notificationEmails = "notification_emails"
            
            case sellerId = "seller_id"
            
            case status = "status"
            
            case taskId = "task_id"
            
            case type = "type"
            
            case stats = "stats"
            
            case id = "_id"
            
            case triggerOn = "trigger_on"
            
            case brand = "brand"
            
            case store = "store"
            
        }

        public init(brand: [Int]? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, filters: InventoryExportFiltersResponse? = nil, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, stats: Stats? = nil, status: String? = nil, store: [Int]? = nil, taskId: String, triggerOn: String? = nil, type: String? = nil, id: String? = nil) {
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.filters = filters
            
            self.modifiedOn = modifiedOn
            
            self.notificationEmails = notificationEmails
            
            self.sellerId = sellerId
            
            self.status = status
            
            self.taskId = taskId
            
            self.type = type
            
            self.stats = stats
            
            self.id = id
            
            self.triggerOn = triggerOn
            
            self.brand = brand
            
            self.store = store
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    filters = try container.decode(InventoryExportFiltersResponse.self, forKey: .filters)
                
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
                
            
            
                sellerId = try container.decode(Int.self, forKey: .sellerId)
                
            
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taskId = try container.decode(String.self, forKey: .taskId)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stats = try container.decode(Stats.self, forKey: .stats)
                
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
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(stats, forKey: .stats)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
        }
        
    }
}



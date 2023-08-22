

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryJobDetailResponse
        Used By: Catalog
    */

    class InventoryJobDetailResponse: Codable {
        
        
        public var sellerId: Int
        
        public var filters: InventoryJobFilters
        
        public var type: String?
        
        public var taskId: String
        
        public var id: String
        
        public var modifiedOn: String?
        
        public var cancelledOn: String?
        
        public var status: [String: Any]?
        
        public var cancelledBy: UserDetail?
        
        public var url: String
        
        public var completedOn: String?
        
        public var createdOn: String?
        
        public var notificationEmails: [String]?
        
        public var createdBy: UserDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
            case filters = "filters"
            
            case type = "type"
            
            case taskId = "task_id"
            
            case id = "id"
            
            case modifiedOn = "modified_on"
            
            case cancelledOn = "cancelled_on"
            
            case status = "status"
            
            case cancelledBy = "cancelled_by"
            
            case url = "url"
            
            case completedOn = "completed_on"
            
            case createdOn = "created_on"
            
            case notificationEmails = "notification_emails"
            
            case createdBy = "created_by"
            
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            
            self.sellerId = sellerId
            
            self.filters = filters
            
            self.type = type
            
            self.taskId = taskId
            
            self.id = id
            
            self.modifiedOn = modifiedOn
            
            self.cancelledOn = cancelledOn
            
            self.status = status
            
            self.cancelledBy = cancelledBy
            
            self.url = url
            
            self.completedOn = completedOn
            
            self.createdOn = createdOn
            
            self.notificationEmails = notificationEmails
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sellerId = try container.decode(Int.self, forKey: .sellerId)
                
            
            
            
                filters = try container.decode(InventoryJobFilters.self, forKey: .filters)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taskId = try container.decode(String.self, forKey: .taskId)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelledOn = try container.decode(String.self, forKey: .cancelledOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode([String: Any].self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
            
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserDetail.self, forKey: .createdBy)
                
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
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryJobDetailResponse
        Used By: Catalog
    */

    class InventoryJobDetailResponse: Codable {
        
        
        public var sellerId: Int
        
        public var filters: InventoryJobFilters
        
        public var type: String?
        
        public var taskId: String
        
        public var id: String
        
        public var modifiedOn: String?
        
        public var cancelledOn: String?
        
        public var status: [String: Any]?
        
        public var cancelledBy: UserDetail?
        
        public var url: String
        
        public var completedOn: String?
        
        public var createdOn: String?
        
        public var notificationEmails: [String]?
        
        public var createdBy: UserDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
            case filters = "filters"
            
            case type = "type"
            
            case taskId = "task_id"
            
            case id = "id"
            
            case modifiedOn = "modified_on"
            
            case cancelledOn = "cancelled_on"
            
            case status = "status"
            
            case cancelledBy = "cancelled_by"
            
            case url = "url"
            
            case completedOn = "completed_on"
            
            case createdOn = "created_on"
            
            case notificationEmails = "notification_emails"
            
            case createdBy = "created_by"
            
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            
            self.sellerId = sellerId
            
            self.filters = filters
            
            self.type = type
            
            self.taskId = taskId
            
            self.id = id
            
            self.modifiedOn = modifiedOn
            
            self.cancelledOn = cancelledOn
            
            self.status = status
            
            self.cancelledBy = cancelledBy
            
            self.url = url
            
            self.completedOn = completedOn
            
            self.createdOn = createdOn
            
            self.notificationEmails = notificationEmails
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sellerId = try container.decode(Int.self, forKey: .sellerId)
                
            
            
            
                filters = try container.decode(InventoryJobFilters.self, forKey: .filters)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taskId = try container.decode(String.self, forKey: .taskId)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelledOn = try container.decode(String.self, forKey: .cancelledOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode([String: Any].self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
            
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserDetail.self, forKey: .createdBy)
                
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
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(taskId, forKey: .taskId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}



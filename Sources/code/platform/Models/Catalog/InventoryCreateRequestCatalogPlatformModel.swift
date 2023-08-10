

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryCreateRequest
        Used By: Catalog
    */

    class InventoryCreateRequest: Codable {
        
        
        public var notificationEmails: [String]?
        
        public var filters: InventoryExportFilter
        
        public var type: String?
        
        public var data: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case notificationEmails = "notification_emails"
            
            case filters = "filters"
            
            case type = "type"
            
            case data = "data"
            
        }

        public init(data: [String]? = nil, filters: InventoryExportFilter, notificationEmails: [String]? = nil, type: String? = nil) {
            
            self.notificationEmails = notificationEmails
            
            self.filters = filters
            
            self.type = type
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filters = try container.decode(InventoryExportFilter.self, forKey: .filters)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([String].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryCreateRequest
        Used By: Catalog
    */

    class InventoryCreateRequest: Codable {
        
        
        public var notificationEmails: [String]?
        
        public var filters: InventoryExportFilter
        
        public var type: String?
        
        public var data: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case notificationEmails = "notification_emails"
            
            case filters = "filters"
            
            case type = "type"
            
            case data = "data"
            
        }

        public init(data: [String]? = nil, filters: InventoryExportFilter, notificationEmails: [String]? = nil, type: String? = nil) {
            
            self.notificationEmails = notificationEmails
            
            self.filters = filters
            
            self.type = type
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filters = try container.decode(InventoryExportFilter.self, forKey: .filters)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([String].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



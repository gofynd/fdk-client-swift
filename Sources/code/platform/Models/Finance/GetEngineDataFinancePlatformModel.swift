

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetEngineData
        Used By: Finance
    */

    class GetEngineData: Codable {
        
        
        public var status: String?
        
        public var filters: GetEngineFilters?
        
        public var project: [String]?
        
        public var tableName: String?
        
        public var search: [String: Any]?
        
        public var page: Int?
        
        public var pageSize: Int?
        
        public var orderBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case filters = "filters"
            
            case project = "project"
            
            case tableName = "table_name"
            
            case search = "search"
            
            case page = "page"
            
            case pageSize = "page_size"
            
            case orderBy = "order_by"
            
        }

        public init(filters: GetEngineFilters? = nil, orderBy: String? = nil, page: Int? = nil, pageSize: Int? = nil, project: [String]? = nil, search: [String: Any]? = nil, status: String? = nil, tableName: String? = nil) {
            
            self.status = status
            
            self.filters = filters
            
            self.project = project
            
            self.tableName = tableName
            
            self.search = search
            
            self.page = page
            
            self.pageSize = pageSize
            
            self.orderBy = orderBy
            
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
                    filters = try container.decode(GetEngineFilters.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    project = try container.decode([String].self, forKey: .project)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tableName = try container.decode(String.self, forKey: .tableName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    search = try container.decode([String: Any].self, forKey: .search)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Int.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageSize = try container.decode(Int.self, forKey: .pageSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderBy = try container.decode(String.self, forKey: .orderBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(project, forKey: .project)
            
            
            
            
            try? container.encodeIfPresent(tableName, forKey: .tableName)
            
            
            
            
            try? container.encodeIfPresent(search, forKey: .search)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(orderBy, forKey: .orderBy)
            
            
        }
        
    }
}





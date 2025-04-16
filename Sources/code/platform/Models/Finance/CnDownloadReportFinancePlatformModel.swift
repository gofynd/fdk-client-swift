

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: CnDownloadReport
        Used By: Finance
    */

    class CnDownloadReport: Codable {
        
        
        public var page: Int?
        
        public var startDate: String?
        
        public var endDate: String?
        
        public var affiliateId: String?
        
        public var search: String?
        
        public var status: String?
        
        public var searchType: String?
        
        public var pageSize: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case affiliateId = "affiliate_id"
            
            case search = "search"
            
            case status = "status"
            
            case searchType = "search_type"
            
            case pageSize = "page_size"
            
        }

        public init(affiliateId: String? = nil, endDate: String? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, searchType: String? = nil, startDate: String? = nil, status: String? = nil) {
            
            self.page = page
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.affiliateId = affiliateId
            
            self.search = search
            
            self.status = status
            
            self.searchType = searchType
            
            self.pageSize = pageSize
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Int.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    search = try container.decode(String.self, forKey: .search)
                
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
                    searchType = try container.decode(String.self, forKey: .searchType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(search, forKey: .search)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(searchType, forKey: .searchType)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
        }
        
    }
}





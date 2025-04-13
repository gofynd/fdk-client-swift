

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetReportListResponse
        Used By: Finance
    */

    class GetReportListResponse: Codable {
        
        
        public var success: Bool?
        
        public var items: [ReportItem]?
        
        public var page: Page?
        
        public var totalCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case items = "items"
            
            case page = "page"
            
            case totalCount = "total_count"
            
        }

        public init(items: [ReportItem]? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            
            self.success = success
            
            self.items = items
            
            self.page = page
            
            self.totalCount = totalCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([ReportItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
        }
        
    }
}







import Foundation




public extension PlatformClient.ApplicationClient.Analytics {
    /*
        Model: JobExecutionResult
        Used By: Analytics
    */

    class JobExecutionResult: Codable {
        
        
        public var rows: [[String: Any]]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case rows = "rows"
            
            case page = "page"
            
        }

        public init(page: Page? = nil, rows: [[String: Any]]? = nil) {
            
            self.rows = rows
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    rows = try container.decode([[String: Any]].self, forKey: .rows)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rows, forKey: .rows)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



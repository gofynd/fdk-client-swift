

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CompanyDpAccountListResponse
        Used By: Serviceability
    */

    class CompanyDpAccountListResponse: Codable {
        
        
        public var success: Bool
        
        public var page: Page
        
        public var items: [Dp1]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [Dp1], page: Page, success: Bool) {
            
            self.success = success
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                items = try container.decode([Dp1].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CompanyDpAccountListResponse
        Used By: Serviceability
    */

    class CompanyDpAccountListResponse: Codable {
        
        
        public var success: Bool
        
        public var page: Page
        
        public var items: [Dp1]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [Dp1], page: Page, success: Bool) {
            
            self.success = success
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                items = try container.decode([Dp1].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



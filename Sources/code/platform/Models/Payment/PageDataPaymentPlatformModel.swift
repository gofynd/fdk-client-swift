

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PageData
        Used By: Payment
    */

    class PageData: Codable {
        
        
        public var pageSize: Int
        
        public var currentPage: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case pageSize = "page_size"
            
            case currentPage = "current_page"
            
        }

        public init(currentPage: Int, pageSize: Int) {
            
            self.pageSize = pageSize
            
            self.currentPage = currentPage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pageSize = try container.decode(Int.self, forKey: .pageSize)
                
            
            
            
                currentPage = try container.decode(Int.self, forKey: .currentPage)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(currentPage, forKey: .currentPage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PageData
        Used By: Payment
    */

    class PageData: Codable {
        
        
        public var pageSize: Int
        
        public var currentPage: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case pageSize = "page_size"
            
            case currentPage = "current_page"
            
        }

        public init(currentPage: Int, pageSize: Int) {
            
            self.pageSize = pageSize
            
            self.currentPage = currentPage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pageSize = try container.decode(Int.self, forKey: .pageSize)
                
            
            
            
                currentPage = try container.decode(Int.self, forKey: .currentPage)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(currentPage, forKey: .currentPage)
            
            
        }
        
    }
}



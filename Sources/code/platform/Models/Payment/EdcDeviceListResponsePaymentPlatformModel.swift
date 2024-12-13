

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: EdcDeviceListResponse
        Used By: Payment
    */

    class EdcDeviceListResponse: Codable {
        
        
        public var items: [EdcDevice]
        
        public var page: Page
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case success = "success"
            
        }

        public init(items: [EdcDevice], page: Page, success: Bool) {
            
            self.items = items
            
            self.page = page
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([EdcDevice].self, forKey: .items)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: EdcDeviceListResponse
        Used By: Payment
    */

    class EdcDeviceListResponse: Codable {
        
        
        public var items: [EdcDevice]
        
        public var page: Page
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case success = "success"
            
        }

        public init(items: [EdcDevice], page: Page, success: Bool) {
            
            self.items = items
            
            self.page = page
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([EdcDevice].self, forKey: .items)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



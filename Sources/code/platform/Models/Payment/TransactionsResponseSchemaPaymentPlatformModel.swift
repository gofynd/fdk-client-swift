

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: TransactionsResponseSchema
        Used By: Payment
    */

    class TransactionsResponseSchema: Codable {
        
        
        public var success: Bool
        
        public var orders: [String: OrderData]
        
        public var page: PageData
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case orders = "orders"
            
            case page = "page"
            
        }

        public init(orders: [String: OrderData], page: PageData, success: Bool) {
            
            self.success = success
            
            self.orders = orders
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                orders = try container.decode([String: OrderData].self, forKey: .orders)
                
            
            
            
                page = try container.decode(PageData.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(orders, forKey: .orders)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: TransactionsResponseSchema
        Used By: Payment
    */

    class TransactionsResponseSchema: Codable {
        
        
        public var success: Bool
        
        public var orders: [String: OrderData]
        
        public var page: PageData
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case orders = "orders"
            
            case page = "page"
            
        }

        public init(orders: [String: OrderData], page: PageData, success: Bool) {
            
            self.success = success
            
            self.orders = orders
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                orders = try container.decode([String: OrderData].self, forKey: .orders)
                
            
            
            
                page = try container.decode(PageData.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(orders, forKey: .orders)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderStatusResult
        Used By: Order
    */

    class OrderStatusResult: Codable {
        
        
        public var statusCode: Int?
        
        public var success: Bool
        
        public var result: [OrderStatusData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
            case result = "result"
            
        }

        public init(result: [OrderStatusData]? = nil, statusCode: Int? = nil, success: Bool) {
            
            self.statusCode = statusCode
            
            self.success = success
            
            self.result = result
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    result = try container.decode([OrderStatusData].self, forKey: .result)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(result, forKey: .result)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderStatusResult
        Used By: Order
    */

    class OrderStatusResult: Codable {
        
        
        public var statusCode: Int?
        
        public var success: Bool
        
        public var result: [OrderStatusData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
            case result = "result"
            
        }

        public init(result: [OrderStatusData]? = nil, statusCode: Int? = nil, success: Bool) {
            
            self.statusCode = statusCode
            
            self.success = success
            
            self.result = result
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    result = try container.decode([OrderStatusData].self, forKey: .result)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(result, forKey: .result)
            
            
        }
        
    }
}



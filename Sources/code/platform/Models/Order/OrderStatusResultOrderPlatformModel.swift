

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderStatusResult
        Used By: Order
    */

    class OrderStatusResult: Codable {
        
        
        public var statusCode: Int?
        
        public var remarks: String?
        
        public var success: Bool
        
        public var result: [OrderStatusData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case remarks = "remarks"
            
            case success = "success"
            
            case result = "result"
            
        }

        public init(remarks: String? = nil, result: [OrderStatusData]? = nil, statusCode: Int? = nil, success: Bool) {
            
            self.statusCode = statusCode
            
            self.remarks = remarks
            
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
                
            
            
                do {
                    remarks = try container.decode(String.self, forKey: .remarks)
                
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
            
            
            
            
            try? container.encodeIfPresent(remarks, forKey: .remarks)
            
            
            
            
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
        
        public var remarks: String?
        
        public var success: Bool
        
        public var result: [OrderStatusData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case remarks = "remarks"
            
            case success = "success"
            
            case result = "result"
            
        }

        public init(remarks: String? = nil, result: [OrderStatusData]? = nil, statusCode: Int? = nil, success: Bool) {
            
            self.statusCode = statusCode
            
            self.remarks = remarks
            
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
                
            
            
                do {
                    remarks = try container.decode(String.self, forKey: .remarks)
                
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
            
            
            
            
            try? container.encodeIfPresent(remarks, forKey: .remarks)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(result, forKey: .result)
            
            
        }
        
    }
}



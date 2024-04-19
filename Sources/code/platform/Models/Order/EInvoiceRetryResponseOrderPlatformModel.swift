

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceRetryResponse
        Used By: Order
    */

    class EInvoiceRetryResponse: Codable {
        
        
        public var success: Bool?
        
        public var successCount: Int
        
        public var message: String?
        
        public var responseData: [EInvoiceResponseData]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case successCount = "success_count"
            
            case message = "message"
            
            case responseData = "response_data"
            
        }

        public init(message: String? = nil, responseData: [EInvoiceResponseData], success: Bool? = nil, successCount: Int) {
            
            self.success = success
            
            self.successCount = successCount
            
            self.message = message
            
            self.responseData = responseData
            
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
                
            
            
                successCount = try container.decode(Int.self, forKey: .successCount)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                responseData = try container.decode([EInvoiceResponseData].self, forKey: .responseData)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(successCount, forKey: .successCount)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(responseData, forKey: .responseData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceRetryResponse
        Used By: Order
    */

    class EInvoiceRetryResponse: Codable {
        
        
        public var success: Bool?
        
        public var successCount: Int
        
        public var message: String?
        
        public var responseData: [EInvoiceResponseData]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case successCount = "success_count"
            
            case message = "message"
            
            case responseData = "response_data"
            
        }

        public init(message: String? = nil, responseData: [EInvoiceResponseData], success: Bool? = nil, successCount: Int) {
            
            self.success = success
            
            self.successCount = successCount
            
            self.message = message
            
            self.responseData = responseData
            
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
                
            
            
                successCount = try container.decode(Int.self, forKey: .successCount)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                responseData = try container.decode([EInvoiceResponseData].self, forKey: .responseData)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(successCount, forKey: .successCount)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(responseData, forKey: .responseData)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Order {
    /*
        Model: FetchCreditBalanceResponsePayload
        Used By: Order
    */

    class FetchCreditBalanceResponsePayload: Codable {
        
        
        public var message: String?
        
        public var status: Double?
        
        public var success: Bool
        
        public var data: CreditBalanceInfo
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case status = "status"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(data: CreditBalanceInfo, message: String? = nil, status: Double? = nil, success: Bool) {
            
            self.message = message
            
            self.status = status
            
            self.success = success
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Double.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                data = try container.decode(CreditBalanceInfo.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FetchCreditBalanceResponsePayload
        Used By: Order
    */

    class FetchCreditBalanceResponsePayload: Codable {
        
        
        public var message: String?
        
        public var status: Double?
        
        public var success: Bool
        
        public var data: CreditBalanceInfo
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case status = "status"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(data: CreditBalanceInfo, message: String? = nil, status: Double? = nil, success: Bool) {
            
            self.message = message
            
            self.status = status
            
            self.success = success
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Double.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                data = try container.decode(CreditBalanceInfo.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



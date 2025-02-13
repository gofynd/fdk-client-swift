

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundModeConfigResponsePayload
        Used By: Order
    */

    class RefundModeConfigResponsePayload: Codable {
        
        
        public var success: Bool
        
        public var status: Double?
        
        public var message: String?
        
        public var data: [RefundModeInfo]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case status = "status"
            
            case message = "message"
            
            case data = "data"
            
        }

        public init(data: [RefundModeInfo], message: String? = nil, status: Double? = nil, success: Bool) {
            
            self.success = success
            
            self.status = status
            
            self.message = message
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    status = try container.decode(Double.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                data = try container.decode([RefundModeInfo].self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundModeConfigResponsePayload
        Used By: Order
    */

    class RefundModeConfigResponsePayload: Codable {
        
        
        public var success: Bool
        
        public var status: Double?
        
        public var message: String?
        
        public var data: [RefundModeInfo]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case status = "status"
            
            case message = "message"
            
            case data = "data"
            
        }

        public init(data: [RefundModeInfo], message: String? = nil, status: Double? = nil, success: Bool) {
            
            self.success = success
            
            self.status = status
            
            self.message = message
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    status = try container.decode(Double.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                data = try container.decode([RefundModeInfo].self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Order {
    /*
        Model: FailedOrdersItem
        Used By: Order
    */

    class FailedOrdersItem: Codable {
        
        
        public var logId: Int
        
        public var orderId: String
        
        public var channel: LogsChannelDetails
        
        public var payment: LogPaymentDetails
        
        public var createdAt: String
        
        public var errorMessage: String
        
        public var displayMessage: String
        
        public var methodName: String
        
        public var meta: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case logId = "log_id"
            
            case orderId = "order_id"
            
            case channel = "channel"
            
            case payment = "payment"
            
            case createdAt = "created_at"
            
            case errorMessage = "error_message"
            
            case displayMessage = "display_message"
            
            case methodName = "method_name"
            
            case meta = "meta"
            
        }

        public init(channel: LogsChannelDetails, createdAt: String, displayMessage: String, errorMessage: String, logId: Int, meta: [String: Any], methodName: String, orderId: String, payment: LogPaymentDetails) {
            
            self.logId = logId
            
            self.orderId = orderId
            
            self.channel = channel
            
            self.payment = payment
            
            self.createdAt = createdAt
            
            self.errorMessage = errorMessage
            
            self.displayMessage = displayMessage
            
            self.methodName = methodName
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                logId = try container.decode(Int.self, forKey: .logId)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                channel = try container.decode(LogsChannelDetails.self, forKey: .channel)
                
            
            
            
                payment = try container.decode(LogPaymentDetails.self, forKey: .payment)
                
            
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
            
                errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
            
            
            
                displayMessage = try container.decode(String.self, forKey: .displayMessage)
                
            
            
            
                methodName = try container.decode(String.self, forKey: .methodName)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(logId, forKey: .logId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encode(errorMessage, forKey: .errorMessage)
            
            
            
            
            try? container.encode(displayMessage, forKey: .displayMessage)
            
            
            
            
            try? container.encodeIfPresent(methodName, forKey: .methodName)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FailedOrdersItem
        Used By: Order
    */

    class FailedOrdersItem: Codable {
        
        
        public var logId: Int
        
        public var orderId: String
        
        public var channel: LogsChannelDetails
        
        public var payment: LogPaymentDetails
        
        public var createdAt: String
        
        public var errorMessage: String
        
        public var displayMessage: String
        
        public var methodName: String
        
        public var meta: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case logId = "log_id"
            
            case orderId = "order_id"
            
            case channel = "channel"
            
            case payment = "payment"
            
            case createdAt = "created_at"
            
            case errorMessage = "error_message"
            
            case displayMessage = "display_message"
            
            case methodName = "method_name"
            
            case meta = "meta"
            
        }

        public init(channel: LogsChannelDetails, createdAt: String, displayMessage: String, errorMessage: String, logId: Int, meta: [String: Any], methodName: String, orderId: String, payment: LogPaymentDetails) {
            
            self.logId = logId
            
            self.orderId = orderId
            
            self.channel = channel
            
            self.payment = payment
            
            self.createdAt = createdAt
            
            self.errorMessage = errorMessage
            
            self.displayMessage = displayMessage
            
            self.methodName = methodName
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                logId = try container.decode(Int.self, forKey: .logId)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                channel = try container.decode(LogsChannelDetails.self, forKey: .channel)
                
            
            
            
                payment = try container.decode(LogPaymentDetails.self, forKey: .payment)
                
            
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
            
                errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
            
            
            
                displayMessage = try container.decode(String.self, forKey: .displayMessage)
                
            
            
            
                methodName = try container.decode(String.self, forKey: .methodName)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(logId, forKey: .logId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encode(errorMessage, forKey: .errorMessage)
            
            
            
            
            try? container.encode(displayMessage, forKey: .displayMessage)
            
            
            
            
            try? container.encodeIfPresent(methodName, forKey: .methodName)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
        }
        
    }
}



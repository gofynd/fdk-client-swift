

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundPriorityDetails
        Used By: Payment
    */

    class RefundPriorityDetails: Codable {
        
        
        public var configuration: String
        
        public var success: Bool
        
        public var apportion: Bool
        
        public var refundSourcesPriority: [RefundSourcesPriority]
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case configuration = "configuration"
            
            case success = "success"
            
            case apportion = "apportion"
            
            case refundSourcesPriority = "refund_sources_priority"
            
            case message = "message"
            
        }

        public init(apportion: Bool, configuration: String, message: String? = nil, refundSourcesPriority: [RefundSourcesPriority], success: Bool) {
            
            self.configuration = configuration
            
            self.success = success
            
            self.apportion = apportion
            
            self.refundSourcesPriority = refundSourcesPriority
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                configuration = try container.decode(String.self, forKey: .configuration)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                apportion = try container.decode(Bool.self, forKey: .apportion)
                
            
            
            
                refundSourcesPriority = try container.decode([RefundSourcesPriority].self, forKey: .refundSourcesPriority)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(apportion, forKey: .apportion)
            
            
            
            
            try? container.encodeIfPresent(refundSourcesPriority, forKey: .refundSourcesPriority)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundPriorityDetails
        Used By: Payment
    */

    class RefundPriorityDetails: Codable {
        
        
        public var configuration: String
        
        public var success: Bool
        
        public var apportion: Bool
        
        public var refundSourcesPriority: [RefundSourcesPriority]
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case configuration = "configuration"
            
            case success = "success"
            
            case apportion = "apportion"
            
            case refundSourcesPriority = "refund_sources_priority"
            
            case message = "message"
            
        }

        public init(apportion: Bool, configuration: String, message: String? = nil, refundSourcesPriority: [RefundSourcesPriority], success: Bool) {
            
            self.configuration = configuration
            
            self.success = success
            
            self.apportion = apportion
            
            self.refundSourcesPriority = refundSourcesPriority
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                configuration = try container.decode(String.self, forKey: .configuration)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                apportion = try container.decode(Bool.self, forKey: .apportion)
                
            
            
            
                refundSourcesPriority = try container.decode([RefundSourcesPriority].self, forKey: .refundSourcesPriority)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(apportion, forKey: .apportion)
            
            
            
            
            try? container.encodeIfPresent(refundSourcesPriority, forKey: .refundSourcesPriority)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ShipmentRefundResponse
        Used By: Payment
    */

    class ShipmentRefundResponse: Codable {
        
        
        public var data: ShipmentRefundDetail?
        
        public var success: Bool?
        
        public var message: String?
        
        public var refundOptions: String?
        
        public var refundOptionsPriority: RefundOptionsPriority?
        
        public var offlineRefundOptionsPriority: RefundOptionsPriority?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
            case message = "message"
            
            case refundOptions = "refund_options"
            
            case refundOptionsPriority = "refund_options_priority"
            
            case offlineRefundOptionsPriority = "offline_refund_options_priority"
            
        }

        public init(data: ShipmentRefundDetail? = nil, message: String? = nil, offlineRefundOptionsPriority: RefundOptionsPriority? = nil, refundOptions: String? = nil, refundOptionsPriority: RefundOptionsPriority? = nil, success: Bool? = nil) {
            
            self.data = data
            
            self.success = success
            
            self.message = message
            
            self.refundOptions = refundOptions
            
            self.refundOptionsPriority = refundOptionsPriority
            
            self.offlineRefundOptionsPriority = offlineRefundOptionsPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(ShipmentRefundDetail.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
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
                
            
            
                do {
                    refundOptions = try container.decode(String.self, forKey: .refundOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundOptionsPriority = try container.decode(RefundOptionsPriority.self, forKey: .refundOptionsPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offlineRefundOptionsPriority = try container.decode(RefundOptionsPriority.self, forKey: .offlineRefundOptionsPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(refundOptions, forKey: .refundOptions)
            
            
            
            
            try? container.encodeIfPresent(refundOptionsPriority, forKey: .refundOptionsPriority)
            
            
            
            
            try? container.encodeIfPresent(offlineRefundOptionsPriority, forKey: .offlineRefundOptionsPriority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ShipmentRefundResponse
        Used By: Payment
    */

    class ShipmentRefundResponse: Codable {
        
        
        public var data: ShipmentRefundDetail?
        
        public var success: Bool?
        
        public var message: String?
        
        public var refundOptions: String?
        
        public var refundOptionsPriority: RefundOptionsPriority?
        
        public var offlineRefundOptionsPriority: RefundOptionsPriority?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
            case message = "message"
            
            case refundOptions = "refund_options"
            
            case refundOptionsPriority = "refund_options_priority"
            
            case offlineRefundOptionsPriority = "offline_refund_options_priority"
            
        }

        public init(data: ShipmentRefundDetail? = nil, message: String? = nil, offlineRefundOptionsPriority: RefundOptionsPriority? = nil, refundOptions: String? = nil, refundOptionsPriority: RefundOptionsPriority? = nil, success: Bool? = nil) {
            
            self.data = data
            
            self.success = success
            
            self.message = message
            
            self.refundOptions = refundOptions
            
            self.refundOptionsPriority = refundOptionsPriority
            
            self.offlineRefundOptionsPriority = offlineRefundOptionsPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(ShipmentRefundDetail.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
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
                
            
            
                do {
                    refundOptions = try container.decode(String.self, forKey: .refundOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundOptionsPriority = try container.decode(RefundOptionsPriority.self, forKey: .refundOptionsPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offlineRefundOptionsPriority = try container.decode(RefundOptionsPriority.self, forKey: .offlineRefundOptionsPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(refundOptions, forKey: .refundOptions)
            
            
            
            
            try? container.encodeIfPresent(refundOptionsPriority, forKey: .refundOptionsPriority)
            
            
            
            
            try? container.encodeIfPresent(offlineRefundOptionsPriority, forKey: .offlineRefundOptionsPriority)
            
            
        }
        
    }
}



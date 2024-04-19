

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceResponseData
        Used By: Order
    */

    class EInvoiceResponseData: Codable {
        
        
        public var shipmentId: String
        
        public var message: String
        
        public var success: Bool
        
        public var ackNo: String?
        
        public var irn: String?
        
        public var ackDt: String?
        
        public var timeout: Int?
        
        public var timeoutUnit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case message = "message"
            
            case success = "success"
            
            case ackNo = "ack_no"
            
            case irn = "irn"
            
            case ackDt = "ack_dt"
            
            case timeout = "timeout"
            
            case timeoutUnit = "timeout_unit"
            
        }

        public init(ackDt: String? = nil, ackNo: String? = nil, irn: String? = nil, message: String, shipmentId: String, success: Bool, timeout: Int? = nil, timeoutUnit: String? = nil) {
            
            self.shipmentId = shipmentId
            
            self.message = message
            
            self.success = success
            
            self.ackNo = ackNo
            
            self.irn = irn
            
            self.ackDt = ackDt
            
            self.timeout = timeout
            
            self.timeoutUnit = timeoutUnit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    ackNo = try container.decode(String.self, forKey: .ackNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    irn = try container.decode(String.self, forKey: .irn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ackDt = try container.decode(String.self, forKey: .ackDt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeoutUnit = try container.decode(String.self, forKey: .timeoutUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(ackNo, forKey: .ackNo)
            
            
            
            
            try? container.encodeIfPresent(irn, forKey: .irn)
            
            
            
            
            try? container.encodeIfPresent(ackDt, forKey: .ackDt)
            
            
            
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            
            
            
            try? container.encodeIfPresent(timeoutUnit, forKey: .timeoutUnit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceResponseData
        Used By: Order
    */

    class EInvoiceResponseData: Codable {
        
        
        public var shipmentId: String
        
        public var message: String
        
        public var success: Bool
        
        public var ackNo: String?
        
        public var irn: String?
        
        public var ackDt: String?
        
        public var timeout: Int?
        
        public var timeoutUnit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case message = "message"
            
            case success = "success"
            
            case ackNo = "ack_no"
            
            case irn = "irn"
            
            case ackDt = "ack_dt"
            
            case timeout = "timeout"
            
            case timeoutUnit = "timeout_unit"
            
        }

        public init(ackDt: String? = nil, ackNo: String? = nil, irn: String? = nil, message: String, shipmentId: String, success: Bool, timeout: Int? = nil, timeoutUnit: String? = nil) {
            
            self.shipmentId = shipmentId
            
            self.message = message
            
            self.success = success
            
            self.ackNo = ackNo
            
            self.irn = irn
            
            self.ackDt = ackDt
            
            self.timeout = timeout
            
            self.timeoutUnit = timeoutUnit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    ackNo = try container.decode(String.self, forKey: .ackNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    irn = try container.decode(String.self, forKey: .irn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ackDt = try container.decode(String.self, forKey: .ackDt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeoutUnit = try container.decode(String.self, forKey: .timeoutUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(ackNo, forKey: .ackNo)
            
            
            
            
            try? container.encodeIfPresent(irn, forKey: .irn)
            
            
            
            
            try? container.encodeIfPresent(ackDt, forKey: .ackDt)
            
            
            
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            
            
            
            try? container.encodeIfPresent(timeoutUnit, forKey: .timeoutUnit)
            
            
        }
        
    }
}



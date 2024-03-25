

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSessionResponseSerializer
        Used By: Payment
    */

    class RefundSessionResponseSerializer: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        
        public var gid: String?
        
        public var status: String?
        
        public var currency: String?
        
        public var platformRefundDetails: [[String: Any]]?
        
        public var totalRefundAmount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case gid = "gid"
            
            case status = "status"
            
            case currency = "currency"
            
            case platformRefundDetails = "platform_refund_details"
            
            case totalRefundAmount = "total_refund_amount"
            
        }

        public init(currency: String? = nil, gid: String? = nil, message: String? = nil, platformRefundDetails: [[String: Any]]? = nil, status: String? = nil, success: Bool? = nil, totalRefundAmount: Int? = nil) {
            
            self.success = success
            
            self.message = message
            
            self.gid = gid
            
            self.status = status
            
            self.currency = currency
            
            self.platformRefundDetails = platformRefundDetails
            
            self.totalRefundAmount = totalRefundAmount
            
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
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gid = try container.decode(String.self, forKey: .gid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformRefundDetails = try container.decode([[String: Any]].self, forKey: .platformRefundDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalRefundAmount = try container.decode(Int.self, forKey: .totalRefundAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(platformRefundDetails, forKey: .platformRefundDetails)
            
            
            
            
            try? container.encodeIfPresent(totalRefundAmount, forKey: .totalRefundAmount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundSessionResponseSerializer
        Used By: Payment
    */

    class RefundSessionResponseSerializer: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        
        public var gid: String?
        
        public var status: String?
        
        public var currency: String?
        
        public var platformRefundDetails: [[String: Any]]?
        
        public var totalRefundAmount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case gid = "gid"
            
            case status = "status"
            
            case currency = "currency"
            
            case platformRefundDetails = "platform_refund_details"
            
            case totalRefundAmount = "total_refund_amount"
            
        }

        public init(currency: String? = nil, gid: String? = nil, message: String? = nil, platformRefundDetails: [[String: Any]]? = nil, status: String? = nil, success: Bool? = nil, totalRefundAmount: Int? = nil) {
            
            self.success = success
            
            self.message = message
            
            self.gid = gid
            
            self.status = status
            
            self.currency = currency
            
            self.platformRefundDetails = platformRefundDetails
            
            self.totalRefundAmount = totalRefundAmount
            
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
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gid = try container.decode(String.self, forKey: .gid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformRefundDetails = try container.decode([[String: Any]].self, forKey: .platformRefundDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalRefundAmount = try container.decode(Int.self, forKey: .totalRefundAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(platformRefundDetails, forKey: .platformRefundDetails)
            
            
            
            
            try? container.encodeIfPresent(totalRefundAmount, forKey: .totalRefundAmount)
            
            
        }
        
    }
}



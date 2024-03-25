

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentSessionResponseSerializer
        Used By: Payment
    */

    class PaymentSessionResponseSerializer: Codable {
        
        
        public var gid: String?
        
        public var platformTransactionDetails: [[String: Any]]?
        
        public var status: String?
        
        public var currency: String?
        
        public var totalAmount: Int?
        
        public var error: String?
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case platformTransactionDetails = "platform_transaction_details"
            
            case status = "status"
            
            case currency = "currency"
            
            case totalAmount = "total_amount"
            
            case error = "error"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(currency: String? = nil, error: String? = nil, gid: String? = nil, message: String? = nil, platformTransactionDetails: [[String: Any]]? = nil, status: String? = nil, success: Bool? = nil, totalAmount: Int? = nil) {
            
            self.gid = gid
            
            self.platformTransactionDetails = platformTransactionDetails
            
            self.status = status
            
            self.currency = currency
            
            self.totalAmount = totalAmount
            
            self.error = error
            
            self.success = success
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gid = try container.decode(String.self, forKey: .gid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformTransactionDetails = try container.decode([[String: Any]].self, forKey: .platformTransactionDetails)
                
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
                    totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentSessionResponseSerializer
        Used By: Payment
    */

    class PaymentSessionResponseSerializer: Codable {
        
        
        public var gid: String?
        
        public var platformTransactionDetails: [[String: Any]]?
        
        public var status: String?
        
        public var currency: String?
        
        public var totalAmount: Int?
        
        public var error: String?
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case platformTransactionDetails = "platform_transaction_details"
            
            case status = "status"
            
            case currency = "currency"
            
            case totalAmount = "total_amount"
            
            case error = "error"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(currency: String? = nil, error: String? = nil, gid: String? = nil, message: String? = nil, platformTransactionDetails: [[String: Any]]? = nil, status: String? = nil, success: Bool? = nil, totalAmount: Int? = nil) {
            
            self.gid = gid
            
            self.platformTransactionDetails = platformTransactionDetails
            
            self.status = status
            
            self.currency = currency
            
            self.totalAmount = totalAmount
            
            self.error = error
            
            self.success = success
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gid = try container.decode(String.self, forKey: .gid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformTransactionDetails = try container.decode([[String: Any]].self, forKey: .platformTransactionDetails)
                
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
                    totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



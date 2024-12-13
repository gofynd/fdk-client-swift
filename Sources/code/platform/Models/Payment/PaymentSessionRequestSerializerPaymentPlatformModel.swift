

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentSessionRequestSerializer
        Used By: Payment
    */

    class PaymentSessionRequestSerializer: Codable {
        
        
        public var meta: [String: Any]?
        
        public var gid: String
        
        public var orderDetails: OrderDetail
        
        public var status: String
        
        public var currency: String
        
        public var paymentDetails: [PaymentSessionDetail]
        
        public var totalAmount: Int
        
        public var checksum: String
        
        public var source: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case gid = "gid"
            
            case orderDetails = "order_details"
            
            case status = "status"
            
            case currency = "currency"
            
            case paymentDetails = "payment_details"
            
            case totalAmount = "total_amount"
            
            case checksum = "checksum"
            
            case source = "source"
            
        }

        public init(checksum: String, currency: String, gid: String, meta: [String: Any]? = nil, orderDetails: OrderDetail, paymentDetails: [PaymentSessionDetail], source: String? = nil, status: String, totalAmount: Int) {
            
            self.meta = meta
            
            self.gid = gid
            
            self.orderDetails = orderDetails
            
            self.status = status
            
            self.currency = currency
            
            self.paymentDetails = paymentDetails
            
            self.totalAmount = totalAmount
            
            self.checksum = checksum
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                orderDetails = try container.decode(OrderDetail.self, forKey: .orderDetails)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                paymentDetails = try container.decode([PaymentSessionDetail].self, forKey: .paymentDetails)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                checksum = try container.decode(String.self, forKey: .checksum)
                
            
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(checksum, forKey: .checksum)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentSessionRequestSerializer
        Used By: Payment
    */

    class PaymentSessionRequestSerializer: Codable {
        
        
        public var meta: [String: Any]?
        
        public var gid: String
        
        public var orderDetails: OrderDetail
        
        public var status: String
        
        public var currency: String
        
        public var paymentDetails: [PaymentSessionDetail]
        
        public var totalAmount: Int
        
        public var checksum: String
        
        public var source: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case gid = "gid"
            
            case orderDetails = "order_details"
            
            case status = "status"
            
            case currency = "currency"
            
            case paymentDetails = "payment_details"
            
            case totalAmount = "total_amount"
            
            case checksum = "checksum"
            
            case source = "source"
            
        }

        public init(checksum: String, currency: String, gid: String, meta: [String: Any]? = nil, orderDetails: OrderDetail, paymentDetails: [PaymentSessionDetail], source: String? = nil, status: String, totalAmount: Int) {
            
            self.meta = meta
            
            self.gid = gid
            
            self.orderDetails = orderDetails
            
            self.status = status
            
            self.currency = currency
            
            self.paymentDetails = paymentDetails
            
            self.totalAmount = totalAmount
            
            self.checksum = checksum
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                orderDetails = try container.decode(OrderDetail.self, forKey: .orderDetails)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                paymentDetails = try container.decode([PaymentSessionDetail].self, forKey: .paymentDetails)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
            
                checksum = try container.decode(String.self, forKey: .checksum)
                
            
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
            
            
            try? container.encodeIfPresent(checksum, forKey: .checksum)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}



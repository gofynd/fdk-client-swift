

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PaymentReceiptPayload
        Used By: FileStorage
    */

    class PaymentReceiptPayload: Codable {
        
        
        public var uid: String?
        
        public var orderDetail: PaymentReceiptOrderDetails?
        
        public var customerDetail: PaymentReceiptCustomerDetails?
        
        public var payments: [PaymentReceiptPayments]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case orderDetail = "order_detail"
            
            case customerDetail = "customer_detail"
            
            case payments = "payments"
            
        }

        public init(customerDetail: PaymentReceiptCustomerDetails? = nil, orderDetail: PaymentReceiptOrderDetails? = nil, payments: [PaymentReceiptPayments]? = nil, uid: String? = nil) {
            
            self.uid = uid
            
            self.orderDetail = orderDetail
            
            self.customerDetail = customerDetail
            
            self.payments = payments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderDetail = try container.decode(PaymentReceiptOrderDetails.self, forKey: .orderDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerDetail = try container.decode(PaymentReceiptCustomerDetails.self, forKey: .customerDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([PaymentReceiptPayments].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(orderDetail, forKey: .orderDetail)
            
            
            
            
            try? container.encodeIfPresent(customerDetail, forKey: .customerDetail)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PaymentReceiptPayload
        Used By: FileStorage
    */

    class PaymentReceiptPayload: Codable {
        
        
        public var uid: String?
        
        public var orderDetail: PaymentReceiptOrderDetails?
        
        public var customerDetail: PaymentReceiptCustomerDetails?
        
        public var payments: [PaymentReceiptPayments]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case orderDetail = "order_detail"
            
            case customerDetail = "customer_detail"
            
            case payments = "payments"
            
        }

        public init(customerDetail: PaymentReceiptCustomerDetails? = nil, orderDetail: PaymentReceiptOrderDetails? = nil, payments: [PaymentReceiptPayments]? = nil, uid: String? = nil) {
            
            self.uid = uid
            
            self.orderDetail = orderDetail
            
            self.customerDetail = customerDetail
            
            self.payments = payments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderDetail = try container.decode(PaymentReceiptOrderDetails.self, forKey: .orderDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerDetail = try container.decode(PaymentReceiptCustomerDetails.self, forKey: .customerDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([PaymentReceiptPayments].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(orderDetail, forKey: .orderDetail)
            
            
            
            
            try? container.encodeIfPresent(customerDetail, forKey: .customerDetail)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
        }
        
    }
}



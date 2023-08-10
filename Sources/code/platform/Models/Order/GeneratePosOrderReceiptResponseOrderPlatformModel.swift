

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GeneratePosOrderReceiptResponse
        Used By: Order
    */

    class GeneratePosOrderReceiptResponse: Codable {
        
        
        public var customerCnReceipt: String?
        
        public var success: Bool?
        
        public var orderId: String?
        
        public var invoiceReceipt: String?
        
        public var paymentReceipt: String?
        
        public var merchantCnReceipt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case customerCnReceipt = "customer_cn_receipt"
            
            case success = "success"
            
            case orderId = "order_id"
            
            case invoiceReceipt = "invoice_receipt"
            
            case paymentReceipt = "payment_receipt"
            
            case merchantCnReceipt = "merchant_cn_receipt"
            
        }

        public init(customerCnReceipt: String? = nil, invoiceReceipt: String? = nil, merchantCnReceipt: String? = nil, orderId: String? = nil, paymentReceipt: String? = nil, success: Bool? = nil) {
            
            self.customerCnReceipt = customerCnReceipt
            
            self.success = success
            
            self.orderId = orderId
            
            self.invoiceReceipt = invoiceReceipt
            
            self.paymentReceipt = paymentReceipt
            
            self.merchantCnReceipt = merchantCnReceipt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customerCnReceipt = try container.decode(String.self, forKey: .customerCnReceipt)
                
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
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceReceipt = try container.decode(String.self, forKey: .invoiceReceipt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentReceipt = try container.decode(String.self, forKey: .paymentReceipt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantCnReceipt = try container.decode(String.self, forKey: .merchantCnReceipt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customerCnReceipt, forKey: .customerCnReceipt)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(invoiceReceipt, forKey: .invoiceReceipt)
            
            
            
            
            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)
            
            
            
            
            try? container.encodeIfPresent(merchantCnReceipt, forKey: .merchantCnReceipt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GeneratePosOrderReceiptResponse
        Used By: Order
    */

    class GeneratePosOrderReceiptResponse: Codable {
        
        
        public var customerCnReceipt: String?
        
        public var success: Bool?
        
        public var orderId: String?
        
        public var invoiceReceipt: String?
        
        public var paymentReceipt: String?
        
        public var merchantCnReceipt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case customerCnReceipt = "customer_cn_receipt"
            
            case success = "success"
            
            case orderId = "order_id"
            
            case invoiceReceipt = "invoice_receipt"
            
            case paymentReceipt = "payment_receipt"
            
            case merchantCnReceipt = "merchant_cn_receipt"
            
        }

        public init(customerCnReceipt: String? = nil, invoiceReceipt: String? = nil, merchantCnReceipt: String? = nil, orderId: String? = nil, paymentReceipt: String? = nil, success: Bool? = nil) {
            
            self.customerCnReceipt = customerCnReceipt
            
            self.success = success
            
            self.orderId = orderId
            
            self.invoiceReceipt = invoiceReceipt
            
            self.paymentReceipt = paymentReceipt
            
            self.merchantCnReceipt = merchantCnReceipt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customerCnReceipt = try container.decode(String.self, forKey: .customerCnReceipt)
                
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
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceReceipt = try container.decode(String.self, forKey: .invoiceReceipt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentReceipt = try container.decode(String.self, forKey: .paymentReceipt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantCnReceipt = try container.decode(String.self, forKey: .merchantCnReceipt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customerCnReceipt, forKey: .customerCnReceipt)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(invoiceReceipt, forKey: .invoiceReceipt)
            
            
            
            
            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)
            
            
            
            
            try? container.encodeIfPresent(merchantCnReceipt, forKey: .merchantCnReceipt)
            
            
        }
        
    }
}



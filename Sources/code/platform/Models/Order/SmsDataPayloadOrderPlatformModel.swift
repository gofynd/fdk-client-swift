

import Foundation


public extension PlatformClient.Order {
    /*
        Model: SmsDataPayload
        Used By: Order
    */

    class SmsDataPayload: Codable {
        
        
        public var shipmentId: String
        
        public var phoneNumber: String
        
        public var amountPaid: Int?
        
        public var orderId: String
        
        public var paymentMode: String?
        
        public var customerName: String?
        
        public var brandName: String?
        
        public var message: String
        
        public var countryCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case phoneNumber = "phone_number"
            
            case amountPaid = "amount_paid"
            
            case orderId = "order_id"
            
            case paymentMode = "payment_mode"
            
            case customerName = "customer_name"
            
            case brandName = "brand_name"
            
            case message = "message"
            
            case countryCode = "country_code"
            
        }

        public init(amountPaid: Int? = nil, brandName: String? = nil, countryCode: String, customerName: String? = nil, message: String, orderId: String, paymentMode: String? = nil, phoneNumber: String, shipmentId: String) {
            
            self.shipmentId = shipmentId
            
            self.phoneNumber = phoneNumber
            
            self.amountPaid = amountPaid
            
            self.orderId = orderId
            
            self.paymentMode = paymentMode
            
            self.customerName = customerName
            
            self.brandName = brandName
            
            self.message = message
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
            
            
            
                do {
                    amountPaid = try container.decode(Int.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerName = try container.decode(String.self, forKey: .customerName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(customerName, forKey: .customerName)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: SmsDataPayload
        Used By: Order
    */

    class SmsDataPayload: Codable {
        
        
        public var shipmentId: String
        
        public var phoneNumber: String
        
        public var amountPaid: Int?
        
        public var orderId: String
        
        public var paymentMode: String?
        
        public var customerName: String?
        
        public var brandName: String?
        
        public var message: String
        
        public var countryCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case phoneNumber = "phone_number"
            
            case amountPaid = "amount_paid"
            
            case orderId = "order_id"
            
            case paymentMode = "payment_mode"
            
            case customerName = "customer_name"
            
            case brandName = "brand_name"
            
            case message = "message"
            
            case countryCode = "country_code"
            
        }

        public init(amountPaid: Int? = nil, brandName: String? = nil, countryCode: String, customerName: String? = nil, message: String, orderId: String, paymentMode: String? = nil, phoneNumber: String, shipmentId: String) {
            
            self.shipmentId = shipmentId
            
            self.phoneNumber = phoneNumber
            
            self.amountPaid = amountPaid
            
            self.orderId = orderId
            
            self.paymentMode = paymentMode
            
            self.customerName = customerName
            
            self.brandName = brandName
            
            self.message = message
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
            
            
            
                do {
                    amountPaid = try container.decode(Int.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerName = try container.decode(String.self, forKey: .customerName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(customerName, forKey: .customerName)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}



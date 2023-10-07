

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PaymentReceiptFormat
        Used By: FileStorage
    */

    class PaymentReceiptFormat: Codable {
        
        
        public var paymentReceipt: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentReceipt = "payment_receipt"
            
        }

        public init(paymentReceipt: [String]? = nil) {
            
            self.paymentReceipt = paymentReceipt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentReceipt = try container.decode([String].self, forKey: .paymentReceipt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PaymentReceiptFormat
        Used By: FileStorage
    */

    class PaymentReceiptFormat: Codable {
        
        
        public var paymentReceipt: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentReceipt = "payment_receipt"
            
        }

        public init(paymentReceipt: [String]? = nil) {
            
            self.paymentReceipt = paymentReceipt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentReceipt = try container.decode([String].self, forKey: .paymentReceipt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)
            
            
        }
        
    }
}



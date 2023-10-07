

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PaymentReceiptPayments
        Used By: FileStorage
    */

    class PaymentReceiptPayments: Codable {
        
        
        public var paymentDesc: String?
        
        public var txnDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentDesc = "payment_desc"
            
            case txnDate = "txn_date"
            
        }

        public init(paymentDesc: String? = nil, txnDate: String? = nil) {
            
            self.paymentDesc = paymentDesc
            
            self.txnDate = txnDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentDesc = try container.decode(String.self, forKey: .paymentDesc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    txnDate = try container.decode(String.self, forKey: .txnDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentDesc, forKey: .paymentDesc)
            
            
            
            
            try? container.encodeIfPresent(txnDate, forKey: .txnDate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PaymentReceiptPayments
        Used By: FileStorage
    */

    class PaymentReceiptPayments: Codable {
        
        
        public var paymentDesc: String?
        
        public var txnDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentDesc = "payment_desc"
            
            case txnDate = "txn_date"
            
        }

        public init(paymentDesc: String? = nil, txnDate: String? = nil) {
            
            self.paymentDesc = paymentDesc
            
            self.txnDate = txnDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentDesc = try container.decode(String.self, forKey: .paymentDesc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    txnDate = try container.decode(String.self, forKey: .txnDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentDesc, forKey: .paymentDesc)
            
            
            
            
            try? container.encodeIfPresent(txnDate, forKey: .txnDate)
            
            
        }
        
    }
}



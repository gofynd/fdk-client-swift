

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceIrnDetails
        Used By: Order
    */

    class EInvoiceIrnDetails: Codable {
        
        
        public var ackDt: String
        
        public var ackNo: String
        
        public var irn: String
        
        public var signedInvoice: String
        
        public var signedQrCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case ackDt = "ack_dt"
            
            case ackNo = "ack_no"
            
            case irn = "irn"
            
            case signedInvoice = "signed_invoice"
            
            case signedQrCode = "signed_qr_code"
            
        }

        public init(ackDt: String, ackNo: String, irn: String, signedInvoice: String, signedQrCode: String) {
            
            self.ackDt = ackDt
            
            self.ackNo = ackNo
            
            self.irn = irn
            
            self.signedInvoice = signedInvoice
            
            self.signedQrCode = signedQrCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ackDt = try container.decode(String.self, forKey: .ackDt)
                
            
            
            
                ackNo = try container.decode(String.self, forKey: .ackNo)
                
            
            
            
                irn = try container.decode(String.self, forKey: .irn)
                
            
            
            
                signedInvoice = try container.decode(String.self, forKey: .signedInvoice)
                
            
            
            
                signedQrCode = try container.decode(String.self, forKey: .signedQrCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ackDt, forKey: .ackDt)
            
            
            
            
            try? container.encodeIfPresent(ackNo, forKey: .ackNo)
            
            
            
            
            try? container.encodeIfPresent(irn, forKey: .irn)
            
            
            
            
            try? container.encodeIfPresent(signedInvoice, forKey: .signedInvoice)
            
            
            
            
            try? container.encodeIfPresent(signedQrCode, forKey: .signedQrCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceIrnDetails
        Used By: Order
    */

    class EInvoiceIrnDetails: Codable {
        
        
        public var ackDt: String
        
        public var ackNo: String
        
        public var irn: String
        
        public var signedInvoice: String
        
        public var signedQrCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case ackDt = "ack_dt"
            
            case ackNo = "ack_no"
            
            case irn = "irn"
            
            case signedInvoice = "signed_invoice"
            
            case signedQrCode = "signed_qr_code"
            
        }

        public init(ackDt: String, ackNo: String, irn: String, signedInvoice: String, signedQrCode: String) {
            
            self.ackDt = ackDt
            
            self.ackNo = ackNo
            
            self.irn = irn
            
            self.signedInvoice = signedInvoice
            
            self.signedQrCode = signedQrCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ackDt = try container.decode(String.self, forKey: .ackDt)
                
            
            
            
                ackNo = try container.decode(String.self, forKey: .ackNo)
                
            
            
            
                irn = try container.decode(String.self, forKey: .irn)
                
            
            
            
                signedInvoice = try container.decode(String.self, forKey: .signedInvoice)
                
            
            
            
                signedQrCode = try container.decode(String.self, forKey: .signedQrCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ackDt, forKey: .ackDt)
            
            
            
            
            try? container.encodeIfPresent(ackNo, forKey: .ackNo)
            
            
            
            
            try? container.encodeIfPresent(irn, forKey: .irn)
            
            
            
            
            try? container.encodeIfPresent(signedInvoice, forKey: .signedInvoice)
            
            
            
            
            try? container.encodeIfPresent(signedQrCode, forKey: .signedQrCode)
            
            
        }
        
    }
}



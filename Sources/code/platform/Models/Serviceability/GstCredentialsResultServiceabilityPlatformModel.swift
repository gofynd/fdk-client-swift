

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GstCredentialsResult
        Used By: Serviceability
    */

    class GstCredentialsResult: Codable {
        
        
        public var eWaybill: EwayBillResult?
        
        public var eInvoice: EinvoiceResult?
        

        public enum CodingKeys: String, CodingKey {
            
            case eWaybill = "e_waybill"
            
            case eInvoice = "e_invoice"
            
        }

        public init(eInvoice: EinvoiceResult? = nil, eWaybill: EwayBillResult? = nil) {
            
            self.eWaybill = eWaybill
            
            self.eInvoice = eInvoice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    eWaybill = try container.decode(EwayBillResult.self, forKey: .eWaybill)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eInvoice = try container.decode(EinvoiceResult.self, forKey: .eInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
            
            
            
            
            try? container.encodeIfPresent(eInvoice, forKey: .eInvoice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GstCredentialsResult
        Used By: Serviceability
    */

    class GstCredentialsResult: Codable {
        
        
        public var eWaybill: EwayBillResult?
        
        public var eInvoice: EinvoiceResult?
        

        public enum CodingKeys: String, CodingKey {
            
            case eWaybill = "e_waybill"
            
            case eInvoice = "e_invoice"
            
        }

        public init(eInvoice: EinvoiceResult? = nil, eWaybill: EwayBillResult? = nil) {
            
            self.eWaybill = eWaybill
            
            self.eInvoice = eInvoice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    eWaybill = try container.decode(EwayBillResult.self, forKey: .eWaybill)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eInvoice = try container.decode(EinvoiceResult.self, forKey: .eInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
            
            
            
            
            try? container.encodeIfPresent(eInvoice, forKey: .eInvoice)
            
            
        }
        
    }
}



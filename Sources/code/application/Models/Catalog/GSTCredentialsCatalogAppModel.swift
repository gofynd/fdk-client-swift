

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: GSTCredentials
        Used By: Catalog
    */
    class GSTCredentials: Codable {
        
        public var eInvoice: EnabledStatus?
        
        public var eWaybill: EnabledStatus?
        

        public enum CodingKeys: String, CodingKey {
            
            case eInvoice = "e_invoice"
            
            case eWaybill = "e_waybill"
            
        }

        public init(eInvoice: EnabledStatus? = nil, eWaybill: EnabledStatus? = nil) {
            
            self.eInvoice = eInvoice
            
            self.eWaybill = eWaybill
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                eInvoice = try container.decode(EnabledStatus.self, forKey: .eInvoice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                eWaybill = try container.decode(EnabledStatus.self, forKey: .eWaybill)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(eInvoice, forKey: .eInvoice)
            
            
            
            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
            
            
        }
        
    }
}

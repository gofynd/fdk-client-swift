

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoiceTypeReq
        Used By: Finance
    */

    class InvoiceTypeReq: Codable {
        
        
        public var data: InvoiceTypePayloadData?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: InvoiceTypePayloadData? = nil) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(InvoiceTypePayloadData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}





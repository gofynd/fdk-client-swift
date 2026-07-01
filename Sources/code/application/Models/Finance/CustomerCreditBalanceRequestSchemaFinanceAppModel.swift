

import Foundation
public extension ApplicationClient.Finance {
    /*
        Model: CustomerCreditBalanceRequestSchema
        Used By: Finance
    */
    class CustomerCreditBalanceRequestSchema: Codable {
        
        public var data: CustomerCreditBalanceReqData?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: CustomerCreditBalanceReqData? = nil) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                data = try container.decode(CustomerCreditBalanceReqData.self, forKey: .data)
            
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

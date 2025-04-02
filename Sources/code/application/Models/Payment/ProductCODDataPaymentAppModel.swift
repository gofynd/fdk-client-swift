

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ProductCODData
        Used By: Payment
    */
    class ProductCODData: Codable {
        
        public var items: [String: Any]?
        
        public var codCharges: CODChargesLimitsResponse?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case codCharges = "cod_charges"
            
        }

        public init(codCharges: CODChargesLimitsResponse? = nil, items: [String: Any]? = nil) {
            
            self.items = items
            
            self.codCharges = codCharges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                items = try container.decode([String: Any].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                codCharges = try container.decode(CODChargesLimitsResponse.self, forKey: .codCharges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
        }
        
    }
}

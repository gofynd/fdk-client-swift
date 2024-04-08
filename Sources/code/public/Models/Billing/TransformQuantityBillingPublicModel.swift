

import Foundation
public extension PublicClient.Billing {
    /*
        Model: TransformQuantity
        Used By: Billing
    */

    class TransformQuantity: Codable {
        
        
        public var divideBy: Int?
        
        public var round: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case divideBy = "divide_by"
            
            case round = "round"
            
        }

        public init(divideBy: Int? = nil, round: String? = nil) {
            
            self.divideBy = divideBy
            
            self.round = round
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    divideBy = try container.decode(Int.self, forKey: .divideBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    round = try container.decode(String.self, forKey: .round)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(divideBy, forKey: .divideBy)
            
            
            
            try? container.encodeIfPresent(round, forKey: .round)
            
            
        }
        
    }
}

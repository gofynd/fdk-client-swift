

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: SplitObject
        Used By: Payment
    */
    class SplitObject: Codable {
        
        public var totalNumberOfSplits: Double?
        
        public var splitsRemaining: Double?
        
        public var amountRemaining: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalNumberOfSplits = "total_number_of_splits"
            
            case splitsRemaining = "splits_remaining"
            
            case amountRemaining = "amount_remaining"
            
        }

        public init(amountRemaining: Double? = nil, splitsRemaining: Double? = nil, totalNumberOfSplits: Double? = nil) {
            
            self.totalNumberOfSplits = totalNumberOfSplits
            
            self.splitsRemaining = splitsRemaining
            
            self.amountRemaining = amountRemaining
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                totalNumberOfSplits = try container.decode(Double.self, forKey: .totalNumberOfSplits)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                splitsRemaining = try container.decode(Double.self, forKey: .splitsRemaining)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                amountRemaining = try container.decode(Double.self, forKey: .amountRemaining)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(totalNumberOfSplits, forKey: .totalNumberOfSplits)
            
            
            
            try? container.encodeIfPresent(splitsRemaining, forKey: .splitsRemaining)
            
            
            
            try? container.encodeIfPresent(amountRemaining, forKey: .amountRemaining)
            
            
        }
        
    }
}

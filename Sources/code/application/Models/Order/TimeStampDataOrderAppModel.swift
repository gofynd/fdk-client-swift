

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: TimeStampData
        Used By: Order
    */
    class TimeStampData: Codable {
        
        public var min: String?
        
        public var max: String?
        
        public var dpPromise: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
            case dpPromise = "dp_promise"
            
        }

        public init(dpPromise: String? = nil, max: String? = nil, min: String? = nil) {
            
            self.min = min
            
            self.max = max
            
            self.dpPromise = dpPromise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                min = try container.decode(String.self, forKey: .min)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                max = try container.decode(String.self, forKey: .max)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dpPromise = try container.decode(String.self, forKey: .dpPromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            try? container.encodeIfPresent(dpPromise, forKey: .dpPromise)
            
            
        }
        
    }
}

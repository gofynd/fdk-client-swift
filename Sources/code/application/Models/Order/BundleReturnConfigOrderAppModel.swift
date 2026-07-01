

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: BundleReturnConfig
        Used By: Order
    */
    class BundleReturnConfig: Codable {
        
        public var allowPartialReturn: Bool?
        
        public var returnable: Bool?
        
        public var unit: Bool?
        
        public var time: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowPartialReturn = "allow_partial_return"
            
            case returnable = "returnable"
            
            case unit = "unit"
            
            case time = "time"
            
        }

        public init(allowPartialReturn: Bool? = nil, returnable: Bool? = nil, time: Bool? = nil, unit: Bool? = nil) {
            
            self.allowPartialReturn = allowPartialReturn
            
            self.returnable = returnable
            
            self.unit = unit
            
            self.time = time
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                allowPartialReturn = try container.decode(Bool.self, forKey: .allowPartialReturn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnable = try container.decode(Bool.self, forKey: .returnable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                unit = try container.decode(Bool.self, forKey: .unit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                time = try container.decode(Bool.self, forKey: .time)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(allowPartialReturn, forKey: .allowPartialReturn)
            
            
            
            try? container.encodeIfPresent(returnable, forKey: .returnable)
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
        }
        
    }
}
